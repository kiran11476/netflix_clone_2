// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mainfailures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailures value) clientFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailures value)? clientFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailures value)? clientFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailuresCopyWith<$Res> {
  factory $MainFailuresCopyWith(
          MainFailures value, $Res Function(MainFailures) then) =
      _$MainFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFailuresCopyWithImpl<$Res> implements $MainFailuresCopyWith<$Res> {
  _$MainFailuresCopyWithImpl(this._value, this._then);

  final MainFailures _value;
  // ignore: unused_field
  final $Res Function(MainFailures) _then;
}

/// @nodoc
abstract class _$$_ClientFailuresCopyWith<$Res> {
  factory _$$_ClientFailuresCopyWith(
          _$_ClientFailures value, $Res Function(_$_ClientFailures) then) =
      __$$_ClientFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientFailuresCopyWithImpl<$Res>
    extends _$MainFailuresCopyWithImpl<$Res>
    implements _$$_ClientFailuresCopyWith<$Res> {
  __$$_ClientFailuresCopyWithImpl(
      _$_ClientFailures _value, $Res Function(_$_ClientFailures) _then)
      : super(_value, (v) => _then(v as _$_ClientFailures));

  @override
  _$_ClientFailures get _value => super._value as _$_ClientFailures;
}

/// @nodoc

class _$_ClientFailures implements _ClientFailures {
  const _$_ClientFailures();

  @override
  String toString() {
    return 'MainFailures.clientFailures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClientFailures);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
  }) {
    return clientFailures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailures,
  }) {
    return clientFailures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailures value) clientFailures,
  }) {
    return clientFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailures value)? clientFailures,
  }) {
    return clientFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailures value)? clientFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures(this);
    }
    return orElse();
  }
}

abstract class _ClientFailures implements MainFailures {
  const factory _ClientFailures() = _$_ClientFailures;
}
