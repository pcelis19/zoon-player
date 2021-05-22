import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final bodyTextTheme = themeData.textTheme.headline2!
        .copyWith(fontSize: themeData.textTheme.headline4!.fontSize);
    return Hero(
      tag: title,
      child: Text(
        title,
        style: bodyTextTheme,
      ),
    );
  }
}
