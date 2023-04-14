import 'package:bloc/bloc.dart';
import 'package:dart_openai/openai.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/domain/core/core_failure.dart';
import 'package:lumina_gpt/domain/sessions/goal.dart';
import 'package:lumina_gpt/domain/sessions/i_sessions_repository.dart';
import 'package:lumina_gpt/domain/sessions/name.dart';
import 'package:lumina_gpt/domain/sessions/role.dart';
import 'package:lumina_gpt/domain/sessions/session.dart';
import 'package:lumina_gpt/domain/settings/api_key.dart';
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
    this._sessionsRepository,
  ) : super(HomeState.initial()) {
    on<AppLaunched>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      (await _settingsRepository.fetchSettings()).match(
        (settings) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isProcessing: false,
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
                  isProcessing: false,
                ),
              );
            },
          );
        },
      );
    });
    on<NewSessionPressed>((_, emit) async {});
    on<DeleteSessionPressed>((_, emit) async {});
    on<SettingsNotFound>((event, emit) async {
      (await _settingsRepository.initializeSettings()).match(
        (_) {
          emit(
            state.copyWith(
              failureOption:
                  const Some(Err(CoreFailure.settings(ApiKeyNotFound()))),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Some(Err(CoreFailure.settings(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<ApiKeyChanged>(
      (event, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          apiKey: ApiKey(event.apiKeyStr),
        ),
      ),
    );
    on<ApiKeySubmitted>((event, emit) async {
      final apiKeyValid = state.apiKey.isValid;

      if (apiKeyValid) {
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
                isProcessing: false,
              ),
            );
          },
        );
      }
    });
    on<ApiKeyUpdated>((event, emit) async {
      OpenAI.apiKey = state.apiKey.getOrCrash();

      add(const HomeEvent.clientInitialized());
    });
    on<ClientInitialized>((event, emit) async {
      (await _sessionsRepository.fetchSessions()).match(
        (sessions) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isProcessing: false,
              sessions: sessions,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Some(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          name: Name(event.nameStr),
        ),
      );
    });
    on<RoleChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          role: Role(event.roleStr),
        ),
      );
    });
    on<GoalChanged>((event, emit) {
      emit(
        state.copyWith(
          failureOption: const None(),
          goal: Goal(event.goalStr),
        ),
      );
    });
    on<DeployPressed>((event, emit) async {
      final nameValid = state.name.isValid;
      final roleValid = state.role.isValid;
      final goalValid = state.goal.isValid;

      if (nameValid && roleValid && goalValid) {
        (await _sessionsRepository.startGoal(
          state.name,
          state.role,
          state.goal,
        ))
            .match(
          (p0) => null,
          (failure) {
            emit(
              state.copyWith(
                failureOption: Some(Err(CoreFailure.sessions(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      }
    });
  }

  final ISettingsRepository _settingsRepository;
  final ISessionsRepository _sessionsRepository;
}
