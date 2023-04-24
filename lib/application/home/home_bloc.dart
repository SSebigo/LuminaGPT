import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';
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
          completionModel: Model.defaultCompletion(),
          embeddingModel: Model.defaultEmbedding(),
        );

        (await _agentsRepository.insertAgent(agent)).match(
          (agent) {
            emit(
              state.copyWith(
                failureOption: const None(),
                agentName: Label(''),
                clusterName: Label(''),
                clusterGoal: Label(''),
                clusterKnowledge: Label(''),
                agentNameController: TextEditingController(),
                clusterNameController: TextEditingController(),
                clusterGoalController: TextEditingController(),
                clusterKnowledgeController: TextEditingController(),
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
          clusterKnowledge: Label(''),
          clusterNameController: TextEditingController(),
          clusterGoalController: TextEditingController(),
          clusterKnowledgeController: TextEditingController(),
          cluster: null,
        ),
      );
    });
    on<DeleteAgentPressed>((_, emit) async {});
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
        final settings = state.settings.copyWith(apiKey: state.apiKey);

        (await _settingsRepository.updateSettings(settings)).match(
          (_) {
            emit(
              state.copyWith(
                failureOption: const None(),
                thinking: false,
                settings: settings,
                apiKey: Label(''),
                apiKeyController: TextEditingController(),
              ),
            );

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
    on<ClusterKnowledgeChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          clusterKnowledge: Label(event.knowledgeStr),
        ),
      );
    });
    on<DeployPressed>((_, emit) async {
      final nameValid = state.clusterName.isValid;
      final goalValid = state.clusterGoal.isValid;
      final knowledgeValid = state.clusterKnowledge.isValid;

      if (nameValid && goalValid && knowledgeValid) {
        emit(
          state.copyWith(
            failureOption: const None(),
            thinking: true,
          ),
        );

        final cluster = Cluster(
          name: state.clusterName,
          goal: state.clusterGoal,
          knowledge: state.clusterKnowledge,
          uid: const Uuid().v4(),
          tasks: [],
        );

        (await _agentsRepository.embedKnowledge(
          state.agent!,
          cluster,
        ))
            .match(
          (cluster) {
            emit(
              state.copyWith(
                failureOption: const None(),
                clusterName: Label(''),
                clusterGoal: Label(''),
                clusterKnowledge: Label(''),
                clusterNameController: TextEditingController(),
                clusterGoalController: TextEditingController(),
                clusterKnowledgeController: TextEditingController(),
                cluster: cluster,
              ),
            );

            add(const HomeEvent.knowledgeEmbedded());
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
    on<_SettingsNotFound>((event, emit) async {
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
    on<_ApiKeyUpdated>((event, emit) async {
      final apiKey = state.settings.apiKey?.getOrCrash();

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
    on<_KnowledgeEmbedded>((_, emit) async {
      if (state.agent != null && state.cluster != null) {
        (await _agentsRepository.startGoal(
          state.agent!,
          state.cluster!,
        ))
            .match(
          (tasks) {
            final cluster = state.cluster!.copyWith(
              tasks: [...state.cluster!.tasks, ...tasks],
            );

            final agent = state.agent!.copyWith(
              clusters: [...state.agent!.clusters, cluster],
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                cluster: cluster,
                tasksQueue: [...tasks],
              ),
            );

            add(const HomeEvent.tasksCreated());
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
    on<_TasksCreated>((event, emit) async {
      if (state.agent != null) {
        await _insertAgent(emit, const HomeEvent.prioritizeTasks());
      }
    });
    on<_PrioritizeTasks>((event, emit) async {
      if (state.tasksQueue.isEmpty) {
        add(const HomeEvent.finished());
      } else {
        if (state.agent != null && state.cluster != null) {
          (await _agentsRepository.prioritizeTasks(
            state.agent!,
            state.cluster!,
            state.tasksQueue,
          ))
              .match(
            (tasks) {
              final cluster = state.cluster!.copyWith(
                tasks: state.cluster!.tasks
                    .map(
                      (t) => tasks.contains(t)
                          ? tasks.singleWhere((t2) => t2.id == t.id)
                          : t,
                    )
                    .toList(),
              );

              final agent = state.agent!.copyWith(
                clusters: state.agent!.clusters
                    .map((c) => c.uid == cluster.uid ? cluster : c)
                    .toList(),
              );

              emit(
                state.copyWith(
                  failureOption: const None(),
                  agent: agent,
                  cluster: cluster,
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
      }
    });
    on<_TasksPrioritized>((_, emit) async {
      if (state.tasksQueue.isNotEmpty) {
        final task =
            state.tasksQueue.singleWhereOrNull((task) => task.priority == 0);

        if (task != null) {
          (await _agentsRepository.embedTaskDescription(
            state.agent!,
            task,
          ))
              .match(
            (task) {
              final tasks =
                  state.tasksQueue.where((t) => t.priority != 0).toList();

              emit(
                state.copyWith(
                  failureOption: const None(),
                  nextTask: task,
                  tasksQueue: tasks,
                ),
              );

              add(const HomeEvent.taskDescriptionEmbedded());
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
    on<_TaskDescriptionEmbedded>((_, emit) async {
      if (state.agent != null &&
          state.cluster != null &&
          state.nextTask != null) {
        (await _agentsRepository.executeTask(
          state.agent!,
          state.cluster!,
          state.nextTask!,
        ))
            .match(
          (task) {
            emit(
              state.copyWith(
                failureOption: const None(),
                nextTask: task,
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
    });
    on<_TaskExecuted>((event, emit) async {
      if (state.agent != null && state.nextTask != null) {
        (await _agentsRepository.embedTaskResult(
          state.agent!,
          state.nextTask!,
        ))
            .match(
          (task) {
            final cluster = state.cluster!.copyWith(
              tasks: state.cluster!.tasks
                  .map((t) => t.id == task.id ? task : t)
                  .toList(),
            );

            final agent = state.agent!.copyWith(
              clusters: state.agent!.clusters
                  .map((c) => c.uid == cluster.uid ? cluster : c)
                  .toList(),
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                cluster: cluster,
              ),
            );

            add(const HomeEvent.taskResultEmbedded());
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
    on<_TaskResultEmbedded>((_, emit) async {
      if (state.agent != null &&
          state.cluster != null &&
          state.nextTask != null) {
        (await _agentsRepository.createTasks(
          state.agent!,
          state.cluster!,
          state.nextTask!,
        ))
            .match(
          (task) {
            final cluster = state.cluster!.copyWith(
              tasks: [...state.cluster!.tasks, ...task],
            );

            final agent = state.agent!.copyWith(
              clusters: state.agent!.clusters
                  .map((c) => c.uid == cluster.uid ? cluster : c)
                  .toList(),
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                cluster: cluster,
                nextTask: null,
              ),
            );

            add(const HomeEvent.taskCreated());
          },
          (failure) {
            failure.maybeMap(
              noNewTask: (_) => add(const HomeEvent.noNewTask()),
              orElse: () => emit(
                state.copyWith(
                  failureOption: Some(Err(CoreFailure.agents(failure))),
                  thinking: false,
                ),
              ),
            );
          },
        );
      }
    });
    on<_TaskCreated>((_, emit) async {
      if (state.agent != null) {
        await _insertAgent(emit, const HomeEvent.prioritizeTasks());
      }
    });
    on<_NoNewTask>((_, emit) async {
      if (state.agent != null) {
        await _insertAgent(emit, const HomeEvent.prioritizeTasks());
      }
    });
    on<_Finished>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          thinking: false,
        ),
      );
    });
  }

  final ISettingsRepository _settingsRepository;
  final IAgentsRepository _agentsRepository;

  FutureOr<void> _insertAgent(Emitter<HomeState> emit, HomeEvent event) async {
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
            tasksQueue:
                cluster?.tasks.where((task) => !task.done).toList() ?? [],
          ),
        );

        add(event);
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
