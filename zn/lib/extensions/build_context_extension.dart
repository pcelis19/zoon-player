import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
  ThemeData get themeData => Theme.of(this);
  TextTheme get textTheme => themeData.textTheme;
  Color get primaryColor => themeData.primaryColor;
  Color get secondaryColor => themeData.colorScheme.secondary;
}
