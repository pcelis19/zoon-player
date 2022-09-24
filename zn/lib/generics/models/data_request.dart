import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zn/lib.dart';
part 'data_request.freezed.dart';

@freezed
class DataRequest<T> with _$DataRequest<T> {
  const factory DataRequest.data(T data) = DataRequestData<T>;
  const factory DataRequest.failure(Failure failure) = DataRequestFailure<T>;
}
