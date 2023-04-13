part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeEvent with _$HomeEvent {
  /// @nodoc
  const factory HomeEvent.appLaunched() = AppLaunched;

  /// @nodoc
  const factory HomeEvent.newSessionPressed() = NewSessionPressed;

  /// @nodoc
  const factory HomeEvent.deleteSessionPressed(Session session) =
      DeleteSessionPressed;
}
