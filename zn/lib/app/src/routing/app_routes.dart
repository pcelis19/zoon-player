import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zn/lib.dart';
part 'app_routes.g.dart';

@TypedGoRoute<RootScreenRoute>(
  path: AppRoutePaths.rootPath,
  routes: [
    TypedGoRoute<PodcastHomeScreenRoute>(path: AppRouteNames.podcastHomeName),
    TypedGoRoute<SettingsScreenRoute>(path: AppRouteNames.settingsName),
  ],
)
class RootScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return const RootScreen();
  }
}

class PodcastHomeScreenRoute extends RootRoute {
  const PodcastHomeScreenRoute();
  @override
  Widget build(BuildContext context) {
    return const PodcastHomeScreen();
  }

  @override
  String get label => 'podcasts';
}

class SettingsScreenRoute extends RootRoute {
  const SettingsScreenRoute();
  @override
  Widget build(BuildContext context) {
    return const SettingsScreen();
  }

  @override
  String get label => 'settings';
}
