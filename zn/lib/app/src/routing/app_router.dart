import 'package:go_router/go_router.dart';
import 'package:zn/lib.dart';

class AppRouter {
  factory AppRouter.init() {
    if (_instance != null) {
      return _instance!;
    }
    _instance = AppRouter._();
    return _instance!;
  }
  AppRouter._();
  static AppRouter? _instance;
  final GoRouter _router = GoRouter(
    routes: $appRoutes,
  );

  static GoRouter get router => _instance!._router;
}
