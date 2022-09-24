import 'package:zn/lib.dart';

class ComplexState<T> with _$ComplexState<T> {
  ///
  const factory ComplexState.loading(T? data, Failure? failure) =
      ComplexStateLoading<T>;

  ///
  const factory ComplexState.data(T data) = ComplexStateData<T>;

  ///
  const factory ComplexState.error(T? data, Failure failure) =
      ComplexStateError<T>;

  Failure? extractFailure() {
    throw UnimplementedError();
  }

  S doWhen<S>() {
    throw UnimplementedError();
  }

  S doWhenHasErrorAndData<S>() {
    throw UnimplementedError();
  }
}
