import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:zn/generics/generics.dart';
import 'package:zn/lib.dart';

mixin ComplexStateMixin<T> on Cubit<ComplexState<T>> {
  @protected
  Future<void> refreshHelper<S>({
    required ComplexCallBacks<T>? callBacks,
    required Future<S> Function() dataRequest,
    required ComplexState<T> Function(S) responseToState,
    bool flushOldState = false,
  }) async {
    if (flushOldState) {
      emit(ComplexState<T>.loading(null, null));
    } else {
      emit(ComplexState.loadingStateFromState(state));
    }
    try {
      final response = await dataRequest.call();
      final nextState = responseToState.call(response);
      if (callBacks != null) {
        nextState.mapOrNull(
          data: (value) {
            callBacks.onSuccess?.call(nextState);
          },
          error: (value) {
            callBacks.onError?.call(value);
          },
        );
      }
      emit(nextState);
    } catch (error, stackTrace) {
      final failure = Failure.fromObject(error, stackTrace);
      ComplexStateError<T> nextState;
      if (flushOldState) {
        nextState = ComplexStateError(null, failure);
      } else {
        nextState = ComplexState.errorStateFromState(state, failure);
      }
      callBacks?.onError?.call(nextState);
      emit(nextState);
    }
  }
}
