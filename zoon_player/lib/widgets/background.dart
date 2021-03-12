// import 'dart:math';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:zoon_player/constants/asset_locations.dart';

// import '../main.dart';

// class Background extends StatefulWidget {
//   @override
//   _BackgroundState createState() => _BackgroundState();
// }

// class _BackgroundState extends State<Background> with TickerProviderStateMixin {
//   AnimationController _controller;
//   @override
//   void initState() {
//     super.initState();
//     _controller =
//         AnimationController(vsync: this, duration: const Duration(seconds: 4))
//           ..repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final animation = Tween(begin: 0, end: 0).animate(_controller);
//     final theme = Theme.of(context);
//     final primaryColor = theme.primaryColor;
//     final accentColor = theme.accentColor;

//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             primaryColor,
//             accentColor,
//           ],
//         ),
//       ),
//       child: Center(
//         child: AnimatedBuilder(
//           animation: animation,
//           child: SvgPicture.asset(kZuneLogo),
//           builder: (context, child) => Transform.scale(
//             scale: _controller.value,
//             child: child,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoon_player/constants/asset_locations.dart';

class Background extends StatelessWidget {
  final ScrollController scrollController;
  final Widget scaffold;

  const Background({
    Key key,
    this.scrollController,
    this.scaffold,
  }) : super(key: key);
  get offset => scrollController.hasClients ? scrollController.offset : 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    final accentColor = theme.accentColor;

    if (scrollController == null)
      return Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  primaryColor,
                  accentColor,
                ],
              ),
            ),
          ),
          scaffold,
        ],
      );

    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                primaryColor,
                accentColor,
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedBuilder(
                animation: scrollController,
                child: SvgPicture.asset(
                  kZuneLogo,
                ),
                builder: (context, child) => Transform.rotate(
                  angle: ((pi * offset) / -1024),
                  child: child,
                ),
              ),
            ),
          ),
        ),
        scaffold
      ],
    );
  }
}
