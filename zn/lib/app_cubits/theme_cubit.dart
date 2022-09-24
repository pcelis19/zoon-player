import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:zn/lib.dart';

const _key = 'themeMode';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit({
    ILoggerService? loggerService,
  })  : _loggerService = loggerService ?? AppServices.loggerService,
        super(ThemeMode.system);

  final ILoggerService _loggerService;
  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      final themeIndex = json[_key]! as int;
      return ThemeMode.values[themeIndex];
    } catch (error, stackTrace) {
      _loggerService.log(stackTrace);
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {_key: state.index};
  }

  Future<void> updateThemeMode(ThemeMode? themeMode) async {
    if (themeMode == null) {
      return;
    }
    emit(themeMode);
  }
}
