import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void pendingFeature(BuildContext context) {
  final theme = Theme.of(context);
  final primaryColor = theme.primaryColor;
  AwesomeDialog(
      context: context,
      animType: AnimType.BOTTOMSLIDE,
      dialogType: DialogType.INFO,
      title: 'INFO',
      desc:
          'That feature isn\'t available just yet, but I am working on it, sorry!',
      headerAnimationLoop: false,
      showCloseIcon: true,
      dialogBackgroundColor: primaryColor,
      borderSide: BorderSide(color: Colors.white, width: 3))
    ..show();
}
