import 'package:flutter/material.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';

class SocialView extends StatelessWidget {
  final String title;

  const SocialView(this.title, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
        scrollController: null,
        scaffold: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: MainMenuText(title: title),
                  ),
                ),
              ),
              Expanded(flex: 3, child: Container())
            ],
          ),
        ));
  }
}
