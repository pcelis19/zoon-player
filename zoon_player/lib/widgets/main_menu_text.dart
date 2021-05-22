import 'package:flutter/material.dart';

class MainMenuText extends StatelessWidget {
  const MainMenuText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final bodyTextTheme = themeData.textTheme.headline1!
        .copyWith(fontSize: themeData.textTheme.headline2!.fontSize);
    return Hero(
      tag: title!,
      child: Text(
        title!,
        style: bodyTextTheme,
      ),
    );
  }
}
