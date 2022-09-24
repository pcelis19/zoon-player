// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataRequest<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataRequestData<T> value) data,
    required TResult Function(DataRequestFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestCopyWith<T, $Res> {
  factory $DataRequestCopyWith(
          DataRequest<T> value, $Res Function(DataRequest<T>) then) =
      _$DataRequestCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataRequestCopyWithImpl<T, $Res>
    implements $DataRequestCopyWith<T, $Res> {
  _$DataRequestCopyWithImpl(this._value, this._then);

  final DataRequest<T> _value;
  // ignore: unused_field
  final $Res Function(DataRequest<T>) _then;
}

/// @nodoc
abstract class _$$DataRequestDataCopyWith<T, $Res> {
  factory _$$DataRequestDataCopyWith(_$DataRequestData<T> value,
          $Res Function(_$DataRequestData<T>) then) =
      __$$DataRequestDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$DataRequestDataCopyWithImpl<T, $Res>
    extends _$DataRequestCopyWithImpl<T, $Res>
    implements _$$DataRequestDataCopyWith<T, $Res> {
  __$$DataRequestDataCopyWithImpl(
      _$DataRequestData<T> _value, $Res Function(_$DataRequestData<T>) _then)
      : super(_value, (v) => _then(v as _$DataRequestData<T>));

  @override
  _$DataRequestData<T> get _value => super._value as _$DataRequestData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataRequestData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataRequestData<T> implements DataRequestData<T> {
  const _$DataRequestData(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataRequest<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$DataRequestDataCopyWith<T, _$DataRequestData<T>> get copyWith =>
      __$$DataRequestDataCopyWithImpl<T, _$DataRequestData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Failure failure) failure,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Failure failure)? failure,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(DataRequestData<T> value) data,
    required TResult Function(DataRequestFailure<T> value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataRequestData<T> implements DataRequest<T> {
  const factory DataRequestData(final T data) = _$DataRequestData<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataRequestDataCopyWith<T, _$DataRequestData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataRequestFailureCopyWith<T, $Res> {
  factory _$$DataRequestFailureCopyWith(_$DataRequestFailure<T> value,
          $Res Function(_$DataRequestFailure<T>) then) =
      __$$DataRequestFailureCopyWithImpl<T, $Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$DataRequestFailureCopyWithImpl<T, $Res>
    extends _$DataRequestCopyWithImpl<T, $Res>
    implements _$$DataRequestFailureCopyWith<T, $Res> {
  __$$DataRequestFailureCopyWithImpl(_$DataRequestFailure<T> _value,
      $Res Function(_$DataRequestFailure<T>) _then)
      : super(_value, (v) => _then(v as _$DataRequestFailure<T>));

  @override
  _$DataRequestFailure<T> get _value => super._value as _$DataRequestFailure<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$DataRequestFailure<T>(
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

class _$DataRequestFailure<T> implements DataRequestFailure<T> {
  const _$DataRequestFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DataRequest<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestFailure<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$DataRequestFailureCopyWith<T, _$DataRequestFailure<T>> get copyWith =>
      __$$DataRequestFailureCopyWithImpl<T, _$DataRequestFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
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
    required TResult Function(DataRequestData<T> value) data,
    required TResult Function(DataRequestFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    TResult Function(DataRequestFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DataRequestFailure<T> implements DataRequest<T> {
  const factory DataRequestFailure(final Failure failure) =
      _$DataRequestFailure<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DataRequestFailureCopyWith<T, _$DataRequestFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
