import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class RootRoute extends GoRouteData {
  const RootRoute();
  String get label;
  Widget buildTitle() {
    return Text(label);
  }

  @override
  Widget build(BuildContext context);
}
