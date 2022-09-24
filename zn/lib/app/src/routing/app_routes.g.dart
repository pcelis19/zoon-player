// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $rootScreenRoute,
    ];

GoRoute get $rootScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $RootScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'podcastHome',
          factory: $PodcastHomeScreenRouteExtension._fromState,
        ),
      ],
    );

extension $RootScreenRouteExtension on RootScreenRoute {
  static RootScreenRoute _fromState(GoRouterState state) => RootScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $PodcastHomeScreenRouteExtension on PodcastHomeScreenRoute {
  static PodcastHomeScreenRoute _fromState(GoRouterState state) =>
      PodcastHomeScreenRoute();

  String get location => GoRouteData.$location(
        '/podcastHome',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
