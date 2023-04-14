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

  /// @nodoc
  const factory HomeEvent.settingsNotFound() = SettingsNotFound;

  /// @nodoc
  const factory HomeEvent.apiKeyChanged(String apiKeyStr) = ApiKeyChanged;

  /// @nodoc
  const factory HomeEvent.apiKeySubmitted() = ApiKeySubmitted;

  /// @nodoc
  const factory HomeEvent.apiKeyUpdated() = ApiKeyUpdated;

  /// @nodoc
  const factory HomeEvent.clientInitialized() = ClientInitialized;

  /// @nodoc
  const factory HomeEvent.nameChanged(String nameStr) = NameChanged;

  /// @nodoc
  const factory HomeEvent.roleChanged(String roleStr) = RoleChanged;

  /// @nodoc
  const factory HomeEvent.goalChanged(String goalStr) = GoalChanged;

  /// @nodoc
  const factory HomeEvent.deployPressed() = DeployPressed;
}
