// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreFailure {
  Object get f => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgentsFailure f) agents,
    required TResult Function(SettingsFailure f) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgentsFailure f)? agents,
    TResult? Function(SettingsFailure f)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgentsFailure f)? agents,
    TResult Function(SettingsFailure f)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Agents value) agents,
    required TResult Function(_Settings value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Agents value)? agents,
    TResult? Function(_Settings value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Agents value)? agents,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res, CoreFailure>;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res, $Val extends CoreFailure>
    implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AgentsCopyWith<$Res> {
  factory _$$_AgentsCopyWith(_$_Agents value, $Res Function(_$_Agents) then) =
      __$$_AgentsCopyWithImpl<$Res>;
  @useResult
  $Res call({AgentsFailure f});

  $AgentsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_AgentsCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$_Agents>
    implements _$$_AgentsCopyWith<$Res> {
  __$$_AgentsCopyWithImpl(_$_Agents _value, $Res Function(_$_Agents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$_Agents(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AgentsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentsFailureCopyWith<$Res> get f {
    return $AgentsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Agents implements _Agents {
  const _$_Agents(this.f);

  @override
  final AgentsFailure f;

  @override
  String toString() {
    return 'CoreFailure.agents(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agents &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgentsCopyWith<_$_Agents> get copyWith =>
      __$$_AgentsCopyWithImpl<_$_Agents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgentsFailure f) agents,
    required TResult Function(SettingsFailure f) settings,
  }) {
    return agents(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgentsFailure f)? agents,
    TResult? Function(SettingsFailure f)? settings,
  }) {
    return agents?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgentsFailure f)? agents,
    TResult Function(SettingsFailure f)? settings,
    required TResult orElse(),
  }) {
    if (agents != null) {
      return agents(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Agents value) agents,
    required TResult Function(_Settings value) settings,
  }) {
    return agents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Agents value)? agents,
    TResult? Function(_Settings value)? settings,
  }) {
    return agents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Agents value)? agents,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (agents != null) {
      return agents(this);
    }
    return orElse();
  }
}

abstract class _Agents implements CoreFailure {
  const factory _Agents(final AgentsFailure f) = _$_Agents;

  @override
  AgentsFailure get f;
  @JsonKey(ignore: true)
  _$$_AgentsCopyWith<_$_Agents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @useResult
  $Res call({SettingsFailure f});

  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
  }) {
    return _then(_$_Settings(
      null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsFailureCopyWith<$Res> get f {
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(this.f);

  @override
  final SettingsFailure f;

  @override
  String toString() {
    return 'CoreFailure.settings(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            (identical(other.f, f) || other.f == f));
  }

  @override
  int get hashCode => Object.hash(runtimeType, f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgentsFailure f) agents,
    required TResult Function(SettingsFailure f) settings,
  }) {
    return settings(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgentsFailure f)? agents,
    TResult? Function(SettingsFailure f)? settings,
  }) {
    return settings?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgentsFailure f)? agents,
    TResult Function(SettingsFailure f)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Agents value) agents,
    required TResult Function(_Settings value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Agents value)? agents,
    TResult? Function(_Settings value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Agents value)? agents,
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements CoreFailure {
  const factory _Settings(final SettingsFailure f) = _$_Settings;

  @override
  SettingsFailure get f;
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
