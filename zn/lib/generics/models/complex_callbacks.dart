import 'package:zn/lib.dart';

class ComplexCallBacks<T> {
  const ComplexCallBacks({
    this.onSuccess,
    this.onError,
  });

  final void Function(ComplexState<T>)? onSuccess;
  final void Function(ComplexStateError<T>)? onError;
}
