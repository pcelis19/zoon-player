import 'package:zn/lib.dart';

class Request with _$Request {
  const factory Request.success() = RequestSuccess;
  const factory Request.failure(Failure failure) = RequestFailure;
}
