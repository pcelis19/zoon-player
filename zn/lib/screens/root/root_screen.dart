import 'package:flutter/material.dart';
import 'package:zn/lib.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // const _RouteButton(
          //   label: 'music',
          //   routeToCall: null,
          // ),
          _RouteButton(
            label: 'podcasts',
            routeToCall: const PodcastHomeScreenRoute().go,
            rootRoute: const PodcastHomeScreenRoute(),
          ),
          // const _RouteButton(
          //   label: 'social',
          //   routeToCall: null,
          // ),
          // const _RouteButton(
          //   label: 'radio',
          //   routeToCall: null,
          // ),
          // const _RouteButton(
          //   label: 'marketplace',
          //   routeToCall: null,
          // ),
          _RouteButton(
            label: 'settings',
            routeToCall: const SettingsScreenRoute().go,
            rootRoute: const SettingsScreenRoute(),
          ),
        ],
      ),
    );
  }
}

class _RouteButton extends StatelessWidget {
  const _RouteButton({
    // ignore: unused_element
    super.key,
    required this.label,
    required this.routeToCall,
    required this.rootRoute,
  });
  final String label;
  final void Function(BuildContext)? routeToCall;
  final RootRoute rootRoute;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          style: TextButton.styleFrom(textStyle: context.textTheme.headline3),
          onPressed:
              routeToCall == null ? null : () => routeToCall?.call(context),
          child: rootRoute.buildTitle(),
        ),
      ),
    );
  }
}
