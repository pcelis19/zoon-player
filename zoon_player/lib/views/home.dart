import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:zoon_player/constants/routes.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';

class Home extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final headerTextTheme = themeData.textTheme.headline1!;
    return Background(
      _scrollController,
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                elevation: 8,
                pinned: true,
                title: AutoSizeText(
                  "Hello, Pedro!",
                  style: headerTextTheme,
                  maxFontSize: 50,
                  minFontSize: 18,
                  maxLines: 1,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    MenuButton(title: "music", routeName: kMusic),
                    MenuButton(title: "podcast", routeName: kPodcasts),
                    // MenuButton(title: "videos", routeName: kVideos),
                    // MenuButton(title: "pictures", routeName: kPictures),
                    MenuButton(title: "social", routeName: kSocial),
                    MenuButton(title: "radio", routeName: kRadio),
                    MenuButton(title: "marketplace", routeName: kMarketPlace),
                    MenuButton(title: "settings", routeName: kSettings),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String? title;
  final String? routeName;
  const MenuButton({this.title, this.routeName});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: TextButton(
          child: MainMenuText(
            title: title,
          ),
          onPressed: () => Navigator.of(context)
              .pushNamed(routeName!, arguments: {"title": title}),
        ),
      ),
    );
  }
}
