part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failureOption,
    required bool isProcessing,
    required List<Session> sessions,
    required Settings settings,
    required ApiKey apiKey,
    required Name name,
    required Role role,
    required Goal goal,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => HomeState(
        failureOption: const None(),
        isProcessing: false,
        sessions: [],
        settings: Settings.empty(),
        apiKey: ApiKey(''),
        name: Name(''),
        role: Role(''),
        goal: Goal(''),
      );
}
