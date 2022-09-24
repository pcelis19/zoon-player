// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Request {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSuccess value) success,
    required TResult Function(RequestFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;
}

/// @nodoc
abstract class _$$RequestSuccessCopyWith<$Res> {
  factory _$$RequestSuccessCopyWith(
          _$RequestSuccess value, $Res Function(_$RequestSuccess) then) =
      __$$RequestSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestSuccessCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$$RequestSuccessCopyWith<$Res> {
  __$$RequestSuccessCopyWithImpl(
      _$RequestSuccess _value, $Res Function(_$RequestSuccess) _then)
      : super(_value, (v) => _then(v as _$RequestSuccess));

  @override
  _$RequestSuccess get _value => super._value as _$RequestSuccess;
}

/// @nodoc

class _$RequestSuccess implements RequestSuccess {
  const _$RequestSuccess();

  @override
  String toString() {
    return 'Request.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Failure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSuccess value) success,
    required TResult Function(RequestFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RequestSuccess implements Request {
  const factory RequestSuccess() = _$RequestSuccess;
}

/// @nodoc
abstract class _$$RequestFailureCopyWith<$Res> {
  factory _$$RequestFailureCopyWith(
          _$RequestFailure value, $Res Function(_$RequestFailure) then) =
      __$$RequestFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$RequestFailureCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$$RequestFailureCopyWith<$Res> {
  __$$RequestFailureCopyWithImpl(
      _$RequestFailure _value, $Res Function(_$RequestFailure) _then)
      : super(_value, (v) => _then(v as _$RequestFailure));

  @override
  _$RequestFailure get _value => super._value as _$RequestFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$RequestFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$RequestFailure implements RequestFailure {
  const _$RequestFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'Request.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$RequestFailureCopyWith<_$RequestFailure> get copyWith =>
      __$$RequestFailureCopyWithImpl<_$RequestFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSuccess value) success,
    required TResult Function(RequestFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSuccess value)? success,
    TResult Function(RequestFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RequestFailure implements Request {
  const factory RequestFailure(final Failure failure) = _$RequestFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RequestFailureCopyWith<_$RequestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
