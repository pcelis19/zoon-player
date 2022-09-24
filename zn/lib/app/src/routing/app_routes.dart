import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zn/lib.dart';
part 'app_routes.g.dart';

@TypedGoRoute<RootScreenRoute>(
  path: AppRoutePaths.rootPath,
  routes: [
    TypedGoRoute<PodcastHomeScreenRoute>(path: AppRouteNames.podcastHome)
  ],
)
class RootScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return const RootScreen();
  }
}

class PodcastHomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return const PodcastHomeScreen();
  }
}
