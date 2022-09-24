import 'package:zn/lib.dart';

mixin SafeDataRequestMixin {
  Future<DataRequest<T>> safeDataRequest<T, S>({
    required Future<S> Function() dataRequest,
    required Future<DataRequest<T>> Function(S) responseToDataRequest,
  }) async {
    try {
      final response = await dataRequest.call();
      final result = await responseToDataRequest.call(response);
      return result;
    } catch (error, stackTrace) {
      final failure = Failure.fromObject(error, stackTrace);
      return DataRequest.failure(failure);
    }
  }
}
