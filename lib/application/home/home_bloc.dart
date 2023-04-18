import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dart_openai/openai.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/i_agents_repository.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/domain/core/core_failure.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/domain/core/view.dart';
import 'package:lumina_gpt/domain/settings/i_settings_repository.dart';
import 'package:lumina_gpt/domain/settings/settings.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';
import 'package:oxidized/oxidized.dart';
import 'package:uuid/uuid.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc(
    this._settingsRepository,
    this._agentsRepository,
  ) : super(HomeState.initial()) {
    on<AppLaunched>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          thinking: true,
        ),
      );

      (await _settingsRepository.fetchSettings()).match(
        (settings) {
          emit(
            state.copyWith(
              failureOption: const None(),
              thinking: false,
              settings: settings,
              apiKey: settings.apiKey,
            ),
          );

          add(const HomeEvent.apiKeyUpdated());
        },
        (failure) {
          failure.maybeMap(
            settingsNotFound: (_) => add(const HomeEvent.settingsNotFound()),
            orElse: () {
              emit(
                state.copyWith(
                  failureOption: Some(Err(CoreFailure.settings(failure))),
                  thinking: false,
                ),
              );
            },
          );
        },
      );
    });
    on<AgentNameSubmitted>((_, emit) async {
      final agentNameValid = state.agentName.isValid;

      if (agentNameValid) {
        final agent = Agent(
          name: state.agentName,
          clusters: [],
          model: Model.base(),
        );

        (await _agentsRepository.insertAgent(agent)).match(
          (agent) {
            emit(
              state.copyWith(
                failureOption: const None(),
                agentName: Label(''),
                clusterName: Label(''),
                clusterGoal: Label(''),
                agents: [...state.agents, agent],
                view: View.clusters,
                agent: agent,
                cluster: null,
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<NewClusterPressed>((_, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          clusterName: Label(''),
          clusterGoal: Label(''),
          cluster: null,
        ),
      );
    });
    on<DeleteAgentPressed>((_, emit) async {});
    on<SettingsNotFound>((event, emit) async {
      (await _settingsRepository.initializeSettings()).match(
        (_) {
          emit(
            state.copyWith(
              failureOption:
                  const Some(Err(CoreFailure.settings(ApiKeyNotFound()))),
              thinking: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Some(Err(CoreFailure.settings(failure))),
              thinking: false,
            ),
          );
        },
      );
    });
    on<ApiKeyChanged>(
      (event, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          apiKey: Label(event.apiKeyStr),
        ),
      ),
    );
    on<ApiKeySubmitted>((event, emit) async {
      final apiKeyValid = state.apiKey?.isValid;

      if (apiKeyValid != null && apiKeyValid) {
        (await _settingsRepository.updateSettings(
          state.settings.copyWith(apiKey: state.apiKey),
        ))
            .match(
          (_) {
            add(const HomeEvent.apiKeyUpdated());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.settings(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_ApiKeyUpdated>((event, emit) async {
      final apiKey = state.apiKey?.getOrCrash();

      if (apiKey != null) {
        OpenAI.apiKey = apiKey;

        add(const HomeEvent.clientInitialized());
      }
    });
    on<_ClientInitialized>((event, emit) async {
      (await _agentsRepository.fetchAgents()).match(
        (agents) {
          emit(
            state.copyWith(
              failureOption: const None(),
              thinking: false,
              agents: agents,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Some(Err(CoreFailure.agents(failure))),
              thinking: false,
            ),
          );
        },
      );
    });
    on<AgentNameChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          agentName: Label(event.nameStr),
        ),
      );
    });
    on<ClusterNameChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          clusterName: Label(event.nameStr),
        ),
      );
    });
    on<ClusterGoalChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          clusterGoal: Label(event.goalStr),
        ),
      );
    });
    on<DeployPressed>((event, emit) async {
      final nameValid = state.clusterName.isValid;
      final goalValid = state.clusterGoal.isValid;

      emit(
        state.copyWith(
          failureOption: const None(),
          thinking: true,
        ),
      );

      if (nameValid && goalValid) {
        (await _agentsRepository.startGoal(
          state.agent!,
          state.clusterGoal,
        ))
            .match(
          (tasks) {
            final cluster = Cluster(
              name: state.clusterName,
              goal: state.clusterGoal,
              tasks: tasks,
              uid: const Uuid().v4(),
            );

            final agent = state.agent!.copyWith(
              clusters: [...state.agent!.clusters, cluster],
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                clusterName: Label(''),
                clusterGoal: Label(''),
                agent: agent,
                cluster: cluster,
                tasksQueue: [...tasks],
              ),
            );

            add(const HomeEvent.agentDeployed());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_AgentDeployed>((event, emit) async {
      if (state.agent != null) {
        (await _agentsRepository.insertAgent(state.agent!)).match(
          (agent) {
            final cluster = agent.clusters.firstWhereOrNull(
              (cluster) => cluster.uid == state.cluster!.uid,
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                cluster: cluster,
                tasksQueue: [...cluster!.tasks],
              ),
            );

            add(const HomeEvent.agentInserted());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_AgentInserted>((event, emit) async {
      if (state.agent != null && state.cluster != null) {
        (await _agentsRepository.prioritizeTasks(
          state.agent!,
          state.cluster!,
          state.tasksQueue,
        ))
            .match(
          (tasks) {
            emit(
              state.copyWith(
                failureOption: const None(),
                tasksQueue: tasks,
              ),
            );

            add(const HomeEvent.tasksPrioritized());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_TasksPrioritized>((_, emit) async {
      if (state.tasksQueue.isNotEmpty) {
        final task =
            state.tasksQueue.singleWhereOrNull((task) => task.priority == 0);

        if (task != null) {
          (await _agentsRepository.executeTask(
            state.agent!,
            state.cluster!,
            task,
          ))
              .match(
            (tasks) {
              emit(
                state.copyWith(
                  failureOption: const None(),
                  tasksQueue: state.tasksQueue
                    ..removeWhere((task) => task.priority == 0),
                ),
              );

              add(const HomeEvent.taskExecuted());
            },
            (failure) {
              emit(
                state.copyWith(
                  failureOption: Some(Err(CoreFailure.agents(failure))),
                  thinking: false,
                ),
              );
            },
          );
        }
      }
    });
    on<_TasksCreated>((event, emit) async {
      if (state.agent != null) {
        (await _agentsRepository.insertAgent(state.agent!)).match(
          (agent) {
            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                agents: state.agents
                    .map((s) => s.id == agent.id ? agent : s)
                    .toList(),
              ),
            );

            add(const HomeEvent.agentInserted());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_TaskExecuted>((event, emit) async {
      if (state.agent != null) {
        (await _agentsRepository.insertAgent(state.agent!)).match(
          (agent) {
            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        );
      }
    });
    on<_MaxTasksReached>((_, emit) async => _executeTasks(emit));
    on<_NoTasksAdded>((_, emit) async => _executeTasks(emit));
    on<AgentPressed>((event, emit) async {
      if (state.agent == null || state.agent!.id != event.agent.id) {
        emit(
          state.copyWith(
            failureOption: const None(),
            agent: event.agent,
            cluster: null,
            view: View.clusters,
          ),
        );
      }
    });
    on<ClusterPressed>((event, emit) async {
      if (state.cluster == null || state.cluster!.id != event.cluster.id) {
        emit(
          state.copyWith(
            failureOption: const None(),
            cluster: event.cluster,
          ),
        );
      }
    });
    on<ViewPressed>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          view: event.view,
        ),
      );
    });
  }

  final ISettingsRepository _settingsRepository;
  final IAgentsRepository _agentsRepository;

  FutureOr<void> _executeTasks(Emitter<HomeState> emit) async {
    if (state.agent != null) {
      // await emit.onEach(
      //   _agentsRepository.executeTasks(
      //     state.agent!,
      //     state.agent!.tasks,
      //     state.goal,
      //   ),
      //   onData: (result) => result.match(
      //     (task) {
      //       // update corresponding task in agent
      //       final agent = state.agent!.copyWith(
      //         tasks: state.agent!.tasks
      //             .map((t) => t.id == task.id ? task : t)
      //             .toList(),
      //       );

      //       emit(
      //         state.copyWith(
      //           failureOption: const None(),
      //           agent: agent,
      //           agents: state.agents
      //               .map((a) => a.id == agent.id ? agent : a)
      //               .toList(),
      //         ),
      //       );

      //       add(HomeEvent.taskExecuted(agent));
      //     },
      //     (failure) {
      //       emit(
      //         state.copyWith(
      //           failureOption: Some(Err(CoreFailure.agents(failure))),
      //           thinking: false,
      //         ),
      //       );
      //     },
      //   ),
      // );
    }
  }
}
