part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failureOption,
    required bool isProcessing,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        failureOption: None(),
        isProcessing: false,
      );
}
