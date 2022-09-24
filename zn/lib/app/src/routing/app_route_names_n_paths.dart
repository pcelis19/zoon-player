mixin AppRouteNames {
  static const rootName = 'dashboard';
  static const podcastHome = 'podcastHome';
}

mixin AppRoutePaths {
  static const rootPath = '/';
  static const podcastHomePath = '$rootPath/${AppRouteNames.podcastHome}';
}
