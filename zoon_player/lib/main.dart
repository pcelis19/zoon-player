import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/constants/routes.dart';
import 'package:zoon_player/services/music_service.dart';
import 'package:zoon_player/views/home.dart';
import 'package:zoon_player/views/social/social_view.dart';

import 'views/music_view/music_view.dart';
import 'views/podcast_view/podcast_view.dart';

void main() {
  runApp(
    Provider(
      create: (_) => MusicService(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool DEBUG = true;
  final baseTheme = ThemeData.dark();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoon',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.pinkAccent,
        textTheme: baseTheme.textTheme,
        textButtonTheme: baseTheme.textButtonTheme,
        accentTextTheme: baseTheme.accentTextTheme,
        primaryTextTheme: baseTheme.primaryTextTheme,
        buttonTheme: baseTheme.buttonTheme,
        elevatedButtonTheme: baseTheme.elevatedButtonTheme,
        iconTheme: baseTheme.iconTheme.copyWith(color: Colors.white),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: DEBUG ? kHome : kWelcome,
      onGenerateRoute: (RouteSettings routeSettings) {
        switch (routeSettings.name) {
          case kDefault:
            return MaterialPageRoute(builder: (context) => Home());
          case kMusic:
            return MaterialPageRoute(
                builder: (context) => MusicView(
                    (routeSettings.arguments as Map<String, String>)["title"]));
          case kPodcasts:
            return MaterialPageRoute(
                builder: (context) => PodcastsView(
                    (routeSettings.arguments as Map<String, String>)["title"]));
          case kSocial:
            return MaterialPageRoute(
                builder: (context) => SocialView(
                    (routeSettings.arguments as Map<String, String>)["title"]));
          default:
            throw UnimplementedError('no route for $routeSettings');
        }
      },
    );
  }
}
