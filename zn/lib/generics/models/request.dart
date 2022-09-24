import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zn/lib.dart';

part 'request.freezed.dart';

@freezed
class Request with _$Request {
  const factory Request.success() = RequestSuccess;
  const factory Request.failure(Failure failure) = RequestFailure;
}
