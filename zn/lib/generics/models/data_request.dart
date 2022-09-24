import 'package:zn/lib.dart';

class DataRequest<T> with _$DataRequest<T> {
  const factory DataRequest.data(T data) = DataRequestData<T>;
  const factory DataRequest.failure(Failure failure) = DataRequestFailure<T>;
}
