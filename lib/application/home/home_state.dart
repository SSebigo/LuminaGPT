part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failureOption,
    required bool thinking,
    required List<Agent> agents,
    required Settings settings,
    required Label name,
    required Label goal,
    Label? apiKey,
    Agent? agent,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => HomeState(
        failureOption: const None(),
        thinking: false,
        agents: [],
        settings: Settings.empty(),
        name: Label(''),
        goal: Label(''),
      );
}
