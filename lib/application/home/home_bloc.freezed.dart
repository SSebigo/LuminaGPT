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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLaunched value) appLaunched,
    required TResult Function(NewSessionPressed value) newSessionPressed,
    required TResult Function(DeleteSessionPressed value) deleteSessionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
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
  }) {
    return appLaunched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
  }) {
    return appLaunched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
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
  }) {
    return appLaunched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
  }) {
    return appLaunched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
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
  }) {
    return newSessionPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
  }) {
    return newSessionPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
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
  }) {
    return newSessionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
  }) {
    return newSessionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
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
  }) {
    return deleteSessionPressed(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appLaunched,
    TResult? Function()? newSessionPressed,
    TResult? Function(Session session)? deleteSessionPressed,
  }) {
    return deleteSessionPressed?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appLaunched,
    TResult Function()? newSessionPressed,
    TResult Function(Session session)? deleteSessionPressed,
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
  }) {
    return deleteSessionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppLaunched value)? appLaunched,
    TResult? Function(NewSessionPressed value)? newSessionPressed,
    TResult? Function(DeleteSessionPressed value)? deleteSessionPressed,
  }) {
    return deleteSessionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLaunched value)? appLaunched,
    TResult Function(NewSessionPressed value)? newSessionPressed,
    TResult Function(DeleteSessionPressed value)? deleteSessionPressed,
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
mixin _$HomeState {
  Option<Result<Unit, CoreFailure>> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  List<Session> get sessions => throw _privateConstructorUsedError;

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
      List<Session> sessions});
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
    ) as $Val);
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
      List<Session> sessions});
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
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.failureOption,
      required this.isProcessing,
      required final List<Session> sessions})
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
  String toString() {
    return 'HomeState(failureOption: $failureOption, isProcessing: $isProcessing, sessions: $sessions)';
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
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOption, isProcessing,
      const DeepCollectionEquality().hash(_sessions));

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
      required final List<Session> sessions}) = _$_HomeState;

  @override
  Option<Result<Unit, CoreFailure>> get failureOption;
  @override
  bool get isProcessing;
  @override
  List<Session> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
