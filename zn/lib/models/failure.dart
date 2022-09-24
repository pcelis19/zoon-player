import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    String? uiTitleError,
    required String uiMessageError,
    Object? originalException,
    StackTrace? stackTrace,
  }) = _Failure;

  const Failure._();

  // ignore: prefer_constructors_over_static_methods
  static Failure fromObject(Object error, [StackTrace? stackTrace]) {
    if (error is Failure) {
      return error;
    }
    return _fromObject(error, stackTrace) ??
        Failure(
          uiTitleError: 'Unknown Error',
          uiMessageError: 'An unexpected error occurred',
          originalException: error,
          stackTrace: stackTrace,
        );
  }

  static Failure? _fromObject(Object error, StackTrace? stackTrace) {
    return null;
  }
}
