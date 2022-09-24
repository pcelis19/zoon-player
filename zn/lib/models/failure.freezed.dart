// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get uiTitleError => throw _privateConstructorUsedError;
  String get uiMessageError => throw _privateConstructorUsedError;
  Object? get originalException => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call(
      {String? uiTitleError,
      String uiMessageError,
      Object? originalException,
      StackTrace? stackTrace});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? uiTitleError = freezed,
    Object? uiMessageError = freezed,
    Object? originalException = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      uiTitleError: uiTitleError == freezed
          ? _value.uiTitleError
          : uiTitleError // ignore: cast_nullable_to_non_nullable
              as String?,
      uiMessageError: uiMessageError == freezed
          ? _value.uiMessageError
          : uiMessageError // ignore: cast_nullable_to_non_nullable
              as String,
      originalException: originalException == freezed
          ? _value.originalException
          : originalException,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uiTitleError,
      String uiMessageError,
      Object? originalException,
      StackTrace? stackTrace});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? uiTitleError = freezed,
    Object? uiMessageError = freezed,
    Object? originalException = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Failure(
      uiTitleError: uiTitleError == freezed
          ? _value.uiTitleError
          : uiTitleError // ignore: cast_nullable_to_non_nullable
              as String?,
      uiMessageError: uiMessageError == freezed
          ? _value.uiMessageError
          : uiMessageError // ignore: cast_nullable_to_non_nullable
              as String,
      originalException: originalException == freezed
          ? _value.originalException
          : originalException,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(
      {this.uiTitleError,
      required this.uiMessageError,
      this.originalException,
      this.stackTrace})
      : super._();

  @override
  final String? uiTitleError;
  @override
  final String uiMessageError;
  @override
  final Object? originalException;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Failure(uiTitleError: $uiTitleError, uiMessageError: $uiMessageError, originalException: $originalException, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.uiTitleError, uiTitleError) &&
            const DeepCollectionEquality()
                .equals(other.uiMessageError, uiMessageError) &&
            const DeepCollectionEquality()
                .equals(other.originalException, originalException) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uiTitleError),
      const DeepCollectionEquality().hash(uiMessageError),
      const DeepCollectionEquality().hash(originalException),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);
}

abstract class _Failure extends Failure {
  const factory _Failure(
      {final String? uiTitleError,
      required final String uiMessageError,
      final Object? originalException,
      final StackTrace? stackTrace}) = _$_Failure;
  const _Failure._() : super._();

  @override
  String? get uiTitleError;
  @override
  String get uiMessageError;
  @override
  Object? get originalException;
  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
