import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zn/lib.dart';

class ZnApp extends StatefulWidget {
  const ZnApp({super.key});

  @override
  State<ZnApp> createState() => _ZnAppState();
}

class _ZnAppState extends State<ZnApp> {
  @override
  void initState() {
    AppRouter.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.router;
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            themeMode: themeMode,
            routerDelegate: router.routerDelegate,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
          );
        },
      ),
    );
  }
}
