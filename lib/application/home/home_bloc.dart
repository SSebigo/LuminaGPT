import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_openai/openai.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/i_agents_repository.dart';
import 'package:lumina_gpt/domain/agents/task.dart';
import 'package:lumina_gpt/domain/core/core_failure.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/domain/settings/i_settings_repository.dart';
import 'package:lumina_gpt/domain/settings/settings.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';
import 'package:oxidized/oxidized.dart';

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
    on<NewAgentPressed>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          agent: null,
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
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          name: Label(event.nameStr),
        ),
      );
    });
    on<GoalChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          goal: Label(event.goalStr),
        ),
      );
    });
    on<DeployPressed>((event, emit) async {
      final nameValid = state.name.isValid;
      final goalValid = state.goal.isValid;

      emit(
        state.copyWith(
          failureOption: const None(),
          thinking: true,
        ),
      );

      if (nameValid && goalValid) {
        (await _agentsRepository.startGoal(
          state.name,
          state.goal,
        ))
            .match(
          (agent) {
            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                agents: List.from([...state.agents, agent]),
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
            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
              ),
            );

            add(HomeEvent.agentInserted(state.agent!.tasks));
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
      if (state.agent != null) {
        await emit.onEach(
          _agentsRepository.createTasks(
            state.agent!,
            event.tasks,
            state.goal,
          ),
          onData: (result) => result.match(
            (tasks) {
              final agent = state.agent!.copyWith(
                tasks: List.from(
                  [...state.agent!.tasks, ...tasks],
                )..sort((a, b) => a.createdAt.compareTo(b.createdAt)),
              );

              emit(
                state.copyWith(
                  failureOption: const None(),
                  agent: agent,
                  agents: state.agents
                      .map((s) => s.id == agent.id ? agent : s)
                      .toList(),
                ),
              );

              // delay by one second before adding new event
              Future.delayed(const Duration(seconds: 1), () {
                add(HomeEvent.tasksCreated(tasks));
              });
            },
            (failure) {
              failure.maybeMap(
                maxTasksReached: (_) {
                  add(const HomeEvent.maxTasksReached());
                },
                noNewTasks: (_) {
                  add(const HomeEvent.noTasksAdded());
                },
                orElse: () => emit(
                  state.copyWith(
                    failureOption: Some(Err(CoreFailure.agents(failure))),
                    thinking: false,
                  ),
                ),
              );
            },
          ),
        );
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

            add(HomeEvent.agentInserted(event.tasks));
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
        (await _agentsRepository.insertAgent(event.agent)).match(
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
          ),
        );
      }
    });
  }

  final ISettingsRepository _settingsRepository;
  final IAgentsRepository _agentsRepository;

  FutureOr<void> _executeTasks(Emitter<HomeState> emit) async {
    if (state.agent != null) {
      await emit.onEach(
        _agentsRepository.executeTasks(
          state.agent!,
          state.agent!.tasks,
          state.goal,
        ),
        onData: (result) => result.match(
          (task) {
            // update corresponding task in agent
            final agent = state.agent!.copyWith(
              tasks: state.agent!.tasks
                  .map((t) => t.id == task.id ? task : t)
                  .toList(),
            );

            emit(
              state.copyWith(
                failureOption: const None(),
                agent: agent,
                agents: state.agents
                    .map((a) => a.id == agent.id ? agent : a)
                    .toList(),
              ),
            );

            add(HomeEvent.taskExecuted(agent));
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.agents(failure))),
                thinking: false,
              ),
            );
          },
        ),
      );
    }
  }
}
