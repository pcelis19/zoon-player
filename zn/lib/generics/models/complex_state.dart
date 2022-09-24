import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zn/lib.dart';
part 'complex_state.freezed.dart';

@freezed
class ComplexState<T> with _$ComplexState<T> {
  const ComplexState._();

  ///
  const factory ComplexState.loading(T? data, Failure? failure) =
      ComplexStateLoading<T>;

  ///
  const factory ComplexState.data(T data) = ComplexStateData<T>;

  ///
  const factory ComplexState.error(T? data, Failure failure) =
      ComplexStateError<T>;

  static ComplexStateError<T> errorStateFromState<T>(
    ComplexState<T> state,
    Failure failure,
  ) {
    return ComplexStateError(state.extractData(), failure);
  }

  static ComplexStateLoading<T> loadingStateFromState<T>(
      ComplexState<T> state) {
    return ComplexStateLoading(state.extractData(), state.extractFailure());
  }

  T? extractData() {
    return map(
      loading: (loadingState) => loadingState.data,
      data: (dataState) => dataState.data,
      error: (errorState) => errorState.data,
    );
  }

  Failure? extractFailure() {
    return map(
      loading: (loadingState) => loadingState.failure,
      data: (dataState) => null,
      error: (errorState) => errorState.failure,
    );
  }

  S doWhen<S>({
    required S Function() noDataNoError,
    required S Function(Failure) hasError,
    required S Function(T) hasData,
  }) {
    final data = extractData();
    final failure = extractFailure();
    if (data != null) {
      return hasData.call(data);
    } else if (failure != null) {
      return hasError.call(failure);
    } else {
      return noDataNoError.call();
    }
  }

  S? doWhenHasErrorAndData<S>({
    required S Function(T, Failure) hasDataHasError,
  }) {
    return mapOrNull<S?>(
      error: (errorState) {
        final data = errorState.data;
        if (data != null) {
          return hasDataHasError.call(data, errorState.failure);
        }
        return null;
      },
    );
  }

  void popUpErrorListener(
    BuildContext context,
    ComplexState<T> state, {
    String? errorText,
  }) {
    return state.doWhenHasErrorAndData(
      hasDataHasError: (_, failure) {
        GenericErrorWidget.showModal(
          context,
          failure,
          errorText: errorText,
        );
      },
    );
  }
}
