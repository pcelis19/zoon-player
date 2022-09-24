mixin AppRouteNames {
  static const rootName = 'dashboard';
  static const podcastHomeName = 'podcastHome';
  static const settingsName = 'settings';
}

mixin AppRoutePaths {
  static const rootPath = '/';
  static const podcastHomePath = '$rootPath/${AppRouteNames.podcastHomeName}';
  static const settingsPath = '$rootPath/${AppRouteNames.settingsName}';
}
