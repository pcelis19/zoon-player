import 'package:flutter/material.dart';
import 'package:zoon_player/constants/routes.dart';
import 'package:zoon_player/views/home.dart';
import 'package:zoon_player/views/music.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final bool DEBUG = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoon',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.pinkAccent,
        textTheme: ThemeData.dark().textTheme,
        textButtonTheme: ThemeData.dark().textButtonTheme,
        accentTextTheme: ThemeData.dark().accentTextTheme,
        primaryTextTheme: ThemeData.dark().primaryTextTheme,
      ),
      initialRoute: DEBUG ? kHome : kWelcome,
      onGenerateRoute: (RouteSettings routeSettings) {
        switch (routeSettings.name) {
          case kDefault:
            return MaterialPageRoute(builder: (context) => Home());
          case kMusic:
            return MaterialPageRoute(builder: (context) => Music());
          default:
            throw UnimplementedError('no route for $routeSettings');
        }
      },
    );
  }
}
