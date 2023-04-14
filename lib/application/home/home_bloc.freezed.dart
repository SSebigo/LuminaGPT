// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppLaunchedCopyWith<$Res> {
  factory _$$AppLaunchedCopyWith(
          _$AppLaunched value, $Res Function(_$AppLaunched) then) =
      __$$AppLaunchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLaunchedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AppLaunched>
    implements _$$AppLaunchedCopyWith<$Res> {
  __$$AppLaunchedCopyWithImpl(
      _$AppLaunched _value, $Res Function(_$AppLaunched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLaunched implements AppLaunched {
  const _$AppLaunched();

  @override
  String toString() {
    return 'HomeEvent.appLaunched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLaunched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return appLaunched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (appLaunched != null) {
      return appLaunched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return appLaunched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (appLaunched != null) {
      return appLaunched(this);
    }
    return orElse();
  }
}

abstract class AppLaunched implements HomeEvent {
  const factory AppLaunched() = _$AppLaunched;
}

/// @nodoc
abstract class _$$NewSessionPressedCopyWith<$Res> {
  factory _$$NewSessionPressedCopyWith(
          _$NewSessionPressed value, $Res Function(_$NewSessionPressed) then) =
      __$$NewSessionPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewSessionPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NewSessionPressed>
    implements _$$NewSessionPressedCopyWith<$Res> {
  __$$NewSessionPressedCopyWithImpl(
      _$NewSessionPressed _value, $Res Function(_$NewSessionPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewSessionPressed implements NewSessionPressed {
  const _$NewSessionPressed();

  @override
  String toString() {
    return 'HomeEvent.newSessionPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewSessionPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return newSessionPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return newSessionPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (newSessionPressed != null) {
      return newSessionPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return newSessionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return newSessionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (newSessionPressed != null) {
      return newSessionPressed(this);
    }
    return orElse();
  }
}

abstract class NewSessionPressed implements HomeEvent {
  const factory NewSessionPressed() = _$NewSessionPressed;
}

/// @nodoc
abstract class _$$DeleteSessionPressedCopyWith<$Res> {
  factory _$$DeleteSessionPressedCopyWith(_$DeleteSessionPressed value,
          $Res Function(_$DeleteSessionPressed) then) =
      __$$DeleteSessionPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$DeleteSessionPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteSessionPressed>
    implements _$$DeleteSessionPressedCopyWith<$Res> {
  __$$DeleteSessionPressedCopyWithImpl(_$DeleteSessionPressed _value,
      $Res Function(_$DeleteSessionPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$DeleteSessionPressed(
      null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$DeleteSessionPressed implements DeleteSessionPressed {
  const _$DeleteSessionPressed(this.session);

  @override
  final Session session;

  @override
  String toString() {
    return 'HomeEvent.deleteSessionPressed(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSessionPressed &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSessionPressedCopyWith<_$DeleteSessionPressed> get copyWith =>
      __$$DeleteSessionPressedCopyWithImpl<_$DeleteSessionPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return deleteSessionPressed(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return deleteSessionPressed?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (deleteSessionPressed != null) {
      return deleteSessionPressed(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return deleteSessionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return deleteSessionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (deleteSessionPressed != null) {
      return deleteSessionPressed(this);
    }
    return orElse();
  }
}

abstract class DeleteSessionPressed implements HomeEvent {
  const factory DeleteSessionPressed(final Session session) =
      _$DeleteSessionPressed;

  Session get session;
  @JsonKey(ignore: true)
  _$$DeleteSessionPressedCopyWith<_$DeleteSessionPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsNotFoundCopyWith<$Res> {
  factory _$$SettingsNotFoundCopyWith(
          _$SettingsNotFound value, $Res Function(_$SettingsNotFound) then) =
      __$$SettingsNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsNotFoundCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SettingsNotFound>
    implements _$$SettingsNotFoundCopyWith<$Res> {
  __$$SettingsNotFoundCopyWithImpl(
      _$SettingsNotFound _value, $Res Function(_$SettingsNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsNotFound implements SettingsNotFound {
  const _$SettingsNotFound();

  @override
  String toString() {
    return 'HomeEvent.settingsNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return settingsNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return settingsNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (settingsNotFound != null) {
      return settingsNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return settingsNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return settingsNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (settingsNotFound != null) {
      return settingsNotFound(this);
    }
    return orElse();
  }
}

abstract class SettingsNotFound implements HomeEvent {
  const factory SettingsNotFound() = _$SettingsNotFound;
}

/// @nodoc
abstract class _$$ApiKeyChangedCopyWith<$Res> {
  factory _$$ApiKeyChangedCopyWith(
          _$ApiKeyChanged value, $Res Function(_$ApiKeyChanged) then) =
      __$$ApiKeyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String apiKeyStr});
}

/// @nodoc
class __$$ApiKeyChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ApiKeyChanged>
    implements _$$ApiKeyChangedCopyWith<$Res> {
  __$$ApiKeyChangedCopyWithImpl(
      _$ApiKeyChanged _value, $Res Function(_$ApiKeyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKeyStr = null,
  }) {
    return _then(_$ApiKeyChanged(
      null == apiKeyStr
          ? _value.apiKeyStr
          : apiKeyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiKeyChanged implements ApiKeyChanged {
  const _$ApiKeyChanged(this.apiKeyStr);

  @override
  final String apiKeyStr;

  @override
  String toString() {
    return 'HomeEvent.apiKeyChanged(apiKeyStr: $apiKeyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiKeyChanged &&
            (identical(other.apiKeyStr, apiKeyStr) ||
                other.apiKeyStr == apiKeyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKeyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiKeyChangedCopyWith<_$ApiKeyChanged> get copyWith =>
      __$$ApiKeyChangedCopyWithImpl<_$ApiKeyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return apiKeyChanged(apiKeyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return apiKeyChanged?.call(apiKeyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeyChanged != null) {
      return apiKeyChanged(apiKeyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return apiKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return apiKeyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeyChanged != null) {
      return apiKeyChanged(this);
    }
    return orElse();
  }
}

abstract class ApiKeyChanged implements HomeEvent {
  const factory ApiKeyChanged(final String apiKeyStr) = _$ApiKeyChanged;

  String get apiKeyStr;
  @JsonKey(ignore: true)
  _$$ApiKeyChangedCopyWith<_$ApiKeyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiKeySubmittedCopyWith<$Res> {
  factory _$$ApiKeySubmittedCopyWith(
          _$ApiKeySubmitted value, $Res Function(_$ApiKeySubmitted) then) =
      __$$ApiKeySubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiKeySubmittedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ApiKeySubmitted>
    implements _$$ApiKeySubmittedCopyWith<$Res> {
  __$$ApiKeySubmittedCopyWithImpl(
      _$ApiKeySubmitted _value, $Res Function(_$ApiKeySubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiKeySubmitted implements ApiKeySubmitted {
  const _$ApiKeySubmitted();

  @override
  String toString() {
    return 'HomeEvent.apiKeySubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiKeySubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return apiKeySubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return apiKeySubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeySubmitted != null) {
      return apiKeySubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return apiKeySubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return apiKeySubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeySubmitted != null) {
      return apiKeySubmitted(this);
    }
    return orElse();
  }
}

abstract class ApiKeySubmitted implements HomeEvent {
  const factory ApiKeySubmitted() = _$ApiKeySubmitted;
}

/// @nodoc
abstract class _$$ApiKeyUpdatedCopyWith<$Res> {
  factory _$$ApiKeyUpdatedCopyWith(
          _$ApiKeyUpdated value, $Res Function(_$ApiKeyUpdated) then) =
      __$$ApiKeyUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiKeyUpdatedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ApiKeyUpdated>
    implements _$$ApiKeyUpdatedCopyWith<$Res> {
  __$$ApiKeyUpdatedCopyWithImpl(
      _$ApiKeyUpdated _value, $Res Function(_$ApiKeyUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiKeyUpdated implements ApiKeyUpdated {
  const _$ApiKeyUpdated();

  @override
  String toString() {
    return 'HomeEvent.apiKeyUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiKeyUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return apiKeyUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return apiKeyUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeyUpdated != null) {
      return apiKeyUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return apiKeyUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return apiKeyUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (apiKeyUpdated != null) {
      return apiKeyUpdated(this);
    }
    return orElse();
  }
}

abstract class ApiKeyUpdated implements HomeEvent {
  const factory ApiKeyUpdated() = _$ApiKeyUpdated;
}

/// @nodoc
abstract class _$$ClientInitializedCopyWith<$Res> {
  factory _$$ClientInitializedCopyWith(
          _$ClientInitialized value, $Res Function(_$ClientInitialized) then) =
      __$$ClientInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientInitializedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClientInitialized>
    implements _$$ClientInitializedCopyWith<$Res> {
  __$$ClientInitializedCopyWithImpl(
      _$ClientInitialized _value, $Res Function(_$ClientInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientInitialized implements ClientInitialized {
  const _$ClientInitialized();

  @override
  String toString() {
    return 'HomeEvent.clientInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return clientInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return clientInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (clientInitialized != null) {
      return clientInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return clientInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return clientInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (clientInitialized != null) {
      return clientInitialized(this);
    }
    return orElse();
  }
}

abstract class ClientInitialized implements HomeEvent {
  const factory ClientInitialized() = _$ClientInitialized;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'HomeEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements HomeEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoleChangedCopyWith<$Res> {
  factory _$$RoleChangedCopyWith(
          _$RoleChanged value, $Res Function(_$RoleChanged) then) =
      __$$RoleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String roleStr});
}

/// @nodoc
class __$$RoleChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RoleChanged>
    implements _$$RoleChangedCopyWith<$Res> {
  __$$RoleChangedCopyWithImpl(
      _$RoleChanged _value, $Res Function(_$RoleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleStr = null,
  }) {
    return _then(_$RoleChanged(
      null == roleStr
          ? _value.roleStr
          : roleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleChanged implements RoleChanged {
  const _$RoleChanged(this.roleStr);

  @override
  final String roleStr;

  @override
  String toString() {
    return 'HomeEvent.roleChanged(roleStr: $roleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleChanged &&
            (identical(other.roleStr, roleStr) || other.roleStr == roleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleChangedCopyWith<_$RoleChanged> get copyWith =>
      __$$RoleChangedCopyWithImpl<_$RoleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return roleChanged(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return roleChanged?.call(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(roleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return roleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return roleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(this);
    }
    return orElse();
  }
}

abstract class RoleChanged implements HomeEvent {
  const factory RoleChanged(final String roleStr) = _$RoleChanged;

  String get roleStr;
  @JsonKey(ignore: true)
  _$$RoleChangedCopyWith<_$RoleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoalChangedCopyWith<$Res> {
  factory _$$GoalChangedCopyWith(
          _$GoalChanged value, $Res Function(_$GoalChanged) then) =
      __$$GoalChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String goalStr});
}

/// @nodoc
class __$$GoalChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GoalChanged>
    implements _$$GoalChangedCopyWith<$Res> {
  __$$GoalChangedCopyWithImpl(
      _$GoalChanged _value, $Res Function(_$GoalChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalStr = null,
  }) {
    return _then(_$GoalChanged(
      null == goalStr
          ? _value.goalStr
          : goalStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoalChanged implements GoalChanged {
  const _$GoalChanged(this.goalStr);

  @override
  final String goalStr;

  @override
  String toString() {
    return 'HomeEvent.goalChanged(goalStr: $goalStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalChanged &&
            (identical(other.goalStr, goalStr) || other.goalStr == goalStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goalStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalChangedCopyWith<_$GoalChanged> get copyWith =>
      __$$GoalChangedCopyWithImpl<_$GoalChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return goalChanged(goalStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return goalChanged?.call(goalStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (goalChanged != null) {
      return goalChanged(goalStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return goalChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return goalChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (goalChanged != null) {
      return goalChanged(this);
    }
    return orElse();
  }
}

abstract class GoalChanged implements HomeEvent {
  const factory GoalChanged(final String goalStr) = _$GoalChanged;

  String get goalStr;
  @JsonKey(ignore: true)
  _$$GoalChangedCopyWith<_$GoalChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeployPressedCopyWith<$Res> {
  factory _$$DeployPressedCopyWith(
          _$DeployPressed value, $Res Function(_$DeployPressed) then) =
      __$$DeployPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeployPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeployPressed>
    implements _$$DeployPressedCopyWith<$Res> {
  __$$DeployPressedCopyWithImpl(
      _$DeployPressed _value, $Res Function(_$DeployPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeployPressed implements DeployPressed {
  const _$DeployPressed();

  @override
  String toString() {
    return 'HomeEvent.deployPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeployPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appLaunched,
    required TResult Function() newSessionPressed,
    required TResult Function(Session session) deleteSessionPressed,
    required TResult Function() settingsNotFound,
    required TResult Function(String apiKeyStr) apiKeyChanged,
    required TResult Function() apiKeySubmitted,
    required TResult Function() apiKeyUpdated,
    required TResult Function() clientInitialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function(String goalStr) goalChanged,
    required TResult Function() deployPressed,
  }) {
    return deployPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
    TResult? Function()? settingsNotFound,
    TResult? Function(String apiKeyStr)? apiKeyChanged,
    TResult? Function()? apiKeySubmitted,
    TResult? Function()? apiKeyUpdated,
    TResult? Function()? clientInitialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String roleStr)? roleChanged,
    TResult? Function(String goalStr)? goalChanged,
    TResult? Function()? deployPressed,
  }) {
    return deployPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    TResult Function()? settingsNotFound,
    TResult Function(String apiKeyStr)? apiKeyChanged,
    TResult Function()? apiKeySubmitted,
    TResult Function()? apiKeyUpdated,
    TResult Function()? clientInitialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function(String goalStr)? goalChanged,
    TResult Function()? deployPressed,
    required TResult orElse(),
  }) {
    if (deployPressed != null) {
      return deployPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
    required TResult Function(SettingsNotFound value) settingsNotFound,
    required TResult Function(ApiKeyChanged value) apiKeyChanged,
    required TResult Function(ApiKeySubmitted value) apiKeySubmitted,
    required TResult Function(ApiKeyUpdated value) apiKeyUpdated,
    required TResult Function(ClientInitialized value) clientInitialized,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(GoalChanged value) goalChanged,
    required TResult Function(DeployPressed value) deployPressed,
  }) {
    return deployPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult? Function(SettingsNotFound value)? settingsNotFound,
    TResult? Function(ApiKeyChanged value)? apiKeyChanged,
    TResult? Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult? Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult? Function(ClientInitialized value)? clientInitialized,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(RoleChanged value)? roleChanged,
    TResult? Function(GoalChanged value)? goalChanged,
    TResult? Function(DeployPressed value)? deployPressed,
  }) {
    return deployPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
    TResult Function(SettingsNotFound value)? settingsNotFound,
    TResult Function(ApiKeyChanged value)? apiKeyChanged,
    TResult Function(ApiKeySubmitted value)? apiKeySubmitted,
    TResult Function(ApiKeyUpdated value)? apiKeyUpdated,
    TResult Function(ClientInitialized value)? clientInitialized,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(GoalChanged value)? goalChanged,
    TResult Function(DeployPressed value)? deployPressed,
    required TResult orElse(),
  }) {
    if (deployPressed != null) {
      return deployPressed(this);
    }
    return orElse();
  }
}

abstract class DeployPressed implements HomeEvent {
  const factory DeployPressed() = _$DeployPressed;
}

/// @nodoc
mixin _$HomeState {
  Option<Result<Unit, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  List<Session> get sessions => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  ApiKey get apiKey => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  Goal get goal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Option<Result<Unit, CoreFailure>> failureOption,
      bool isProcessing,
      List<Session> sessions,
      Settings settings,
      ApiKey apiKey,
      Name name,
      Role role,
      Goal goal});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOption = null,
    Object? isProcessing = null,
    Object? sessions = null,
    Object? settings = null,
    Object? apiKey = null,
    Object? name = null,
    Object? role = null,
    Object? goal = null,
  }) {
    return _then(_value.copyWith(
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as ApiKey,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Goal,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Result<Unit, CoreFailure>> failureOption,
      bool isProcessing,
      List<Session> sessions,
      Settings settings,
      ApiKey apiKey,
      Name name,
      Role role,
      Goal goal});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOption = null,
    Object? isProcessing = null,
    Object? sessions = null,
    Object? settings = null,
    Object? apiKey = null,
    Object? name = null,
    Object? role = null,
    Object? goal = null,
  }) {
    return _then(_$_HomeState(
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Result<Unit, CoreFailure>>,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as ApiKey,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Goal,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.failureOption,
      required this.isProcessing,
      required final List<Session> sessions,
      required this.settings,
      required this.apiKey,
      required this.name,
      required this.role,
      required this.goal})
      : _sessions = sessions;

  @override
  final Option<Result<Unit, CoreFailure>> failureOption;
  @override
  final bool isProcessing;
  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  final Settings settings;
  @override
  final ApiKey apiKey;
  @override
  final Name name;
  @override
  final Role role;
  @override
  final Goal goal;

  @override
  String toString() {
    return 'HomeState(failureOption: $failureOption, isProcessing: $isProcessing, sessions: $sessions, settings: $settings, apiKey: $apiKey, name: $name, role: $role, goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failureOption,
      isProcessing,
      const DeepCollectionEquality().hash(_sessions),
      settings,
      apiKey,
      name,
      role,
      goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final Option<Result<Unit, CoreFailure>> failureOption,
      required final bool isProcessing,
      required final List<Session> sessions,
      required final Settings settings,
      required final ApiKey apiKey,
      required final Name name,
      required final Role role,
      required final Goal goal}) = _$_HomeState;

  @override
  Option<Result<Unit, CoreFailure>> get failureOption;
  @override
  bool get isProcessing;
  @override
  List<Session> get sessions;
  @override
  Settings get settings;
  @override
  ApiKey get apiKey;
  @override
  Name get name;
  @override
  Role get role;
  @override
  Goal get goal;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
