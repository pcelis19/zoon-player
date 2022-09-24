// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complex_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComplexState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Failure? failure) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComplexStateLoading<T> value) loading,
    required TResult Function(ComplexStateData<T> value) data,
    required TResult Function(ComplexStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexStateCopyWith<T, $Res> {
  factory $ComplexStateCopyWith(
          ComplexState<T> value, $Res Function(ComplexState<T>) then) =
      _$ComplexStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ComplexStateCopyWithImpl<T, $Res>
    implements $ComplexStateCopyWith<T, $Res> {
  _$ComplexStateCopyWithImpl(this._value, this._then);

  final ComplexState<T> _value;
  // ignore: unused_field
  final $Res Function(ComplexState<T>) _then;
}

/// @nodoc
abstract class _$$ComplexStateLoadingCopyWith<T, $Res> {
  factory _$$ComplexStateLoadingCopyWith(_$ComplexStateLoading<T> value,
          $Res Function(_$ComplexStateLoading<T>) then) =
      __$$ComplexStateLoadingCopyWithImpl<T, $Res>;
  $Res call({T? data, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$ComplexStateLoadingCopyWithImpl<T, $Res>
    extends _$ComplexStateCopyWithImpl<T, $Res>
    implements _$$ComplexStateLoadingCopyWith<T, $Res> {
  __$$ComplexStateLoadingCopyWithImpl(_$ComplexStateLoading<T> _value,
      $Res Function(_$ComplexStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _$ComplexStateLoading<T>));

  @override
  _$ComplexStateLoading<T> get _value =>
      super._value as _$ComplexStateLoading<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ComplexStateLoading<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ComplexStateLoading<T> extends ComplexStateLoading<T> {
  const _$ComplexStateLoading(this.data, this.failure) : super._();

  @override
  final T? data;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ComplexState<$T>.loading(data: $data, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexStateLoading<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ComplexStateLoadingCopyWith<T, _$ComplexStateLoading<T>> get copyWith =>
      __$$ComplexStateLoadingCopyWithImpl<T, _$ComplexStateLoading<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Failure? failure) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, Failure failure) error,
  }) {
    return loading(this.data, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
  }) {
    return loading?.call(this.data, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.data, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComplexStateLoading<T> value) loading,
    required TResult Function(ComplexStateData<T> value) data,
    required TResult Function(ComplexStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ComplexStateLoading<T> extends ComplexState<T> {
  const factory ComplexStateLoading(final T? data, final Failure? failure) =
      _$ComplexStateLoading<T>;
  const ComplexStateLoading._() : super._();

  T? get data;
  Failure? get failure;
  @JsonKey(ignore: true)
  _$$ComplexStateLoadingCopyWith<T, _$ComplexStateLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComplexStateDataCopyWith<T, $Res> {
  factory _$$ComplexStateDataCopyWith(_$ComplexStateData<T> value,
          $Res Function(_$ComplexStateData<T>) then) =
      __$$ComplexStateDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$ComplexStateDataCopyWithImpl<T, $Res>
    extends _$ComplexStateCopyWithImpl<T, $Res>
    implements _$$ComplexStateDataCopyWith<T, $Res> {
  __$$ComplexStateDataCopyWithImpl(
      _$ComplexStateData<T> _value, $Res Function(_$ComplexStateData<T>) _then)
      : super(_value, (v) => _then(v as _$ComplexStateData<T>));

  @override
  _$ComplexStateData<T> get _value => super._value as _$ComplexStateData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ComplexStateData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ComplexStateData<T> extends ComplexStateData<T> {
  const _$ComplexStateData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ComplexState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ComplexStateDataCopyWith<T, _$ComplexStateData<T>> get copyWith =>
      __$$ComplexStateDataCopyWithImpl<T, _$ComplexStateData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Failure? failure) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, Failure failure) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComplexStateLoading<T> value) loading,
    required TResult Function(ComplexStateData<T> value) data,
    required TResult Function(ComplexStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ComplexStateData<T> extends ComplexState<T> {
  const factory ComplexStateData(final T data) = _$ComplexStateData<T>;
  const ComplexStateData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ComplexStateDataCopyWith<T, _$ComplexStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComplexStateErrorCopyWith<T, $Res> {
  factory _$$ComplexStateErrorCopyWith(_$ComplexStateError<T> value,
          $Res Function(_$ComplexStateError<T>) then) =
      __$$ComplexStateErrorCopyWithImpl<T, $Res>;
  $Res call({T? data, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ComplexStateErrorCopyWithImpl<T, $Res>
    extends _$ComplexStateCopyWithImpl<T, $Res>
    implements _$$ComplexStateErrorCopyWith<T, $Res> {
  __$$ComplexStateErrorCopyWithImpl(_$ComplexStateError<T> _value,
      $Res Function(_$ComplexStateError<T>) _then)
      : super(_value, (v) => _then(v as _$ComplexStateError<T>));

  @override
  _$ComplexStateError<T> get _value => super._value as _$ComplexStateError<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ComplexStateError<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
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

class _$ComplexStateError<T> extends ComplexStateError<T> {
  const _$ComplexStateError(this.data, this.failure) : super._();

  @override
  final T? data;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'ComplexState<$T>.error(data: $data, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexStateError<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$ComplexStateErrorCopyWith<T, _$ComplexStateError<T>> get copyWith =>
      __$$ComplexStateErrorCopyWithImpl<T, _$ComplexStateError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data, Failure? failure) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, Failure failure) error,
  }) {
    return error(this.data, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
  }) {
    return error?.call(this.data, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data, Failure? failure)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.data, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComplexStateLoading<T> value) loading,
    required TResult Function(ComplexStateData<T> value) data,
    required TResult Function(ComplexStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComplexStateLoading<T> value)? loading,
    TResult Function(ComplexStateData<T> value)? data,
    TResult Function(ComplexStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ComplexStateError<T> extends ComplexState<T> {
  const factory ComplexStateError(final T? data, final Failure failure) =
      _$ComplexStateError<T>;
  const ComplexStateError._() : super._();

  T? get data;
  Failure get failure;
  @JsonKey(ignore: true)
  _$$ComplexStateErrorCopyWith<T, _$ComplexStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
