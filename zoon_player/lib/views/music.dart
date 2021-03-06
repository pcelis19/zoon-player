import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:zoon_player/components/music_query_list.dart';
import 'package:zoon_player/services/music_service.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';

class Music extends StatelessWidget {
  final String title;
  final ScrollController _scrollController = ScrollController();

  final PageController _contentPageController = PageController();
  final PageController _titlePageController =
      PageController(viewportFraction: .6);
  final Tuple2<List<Label>, List<Widget>> labelsAndContent = Tuple2(<Label>[
    Label("songs"),
    Label("genres"),
    Label("albums"),
    Label("artists"),
    Label("playlist"),
  ], <Widget>[
    MusicQueryList(MusicQueryType.songs),
    MusicQueryList(MusicQueryType.genres),
    MusicQueryList(MusicQueryType.albums),
    MusicQueryList(MusicQueryType.artists),
    MusicQueryList(MusicQueryType.playlists),
  ]);

  Music(this.title, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      _scrollController,
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: MainMenuText(title: title),
          elevation: 8,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: PageView(
                controller: _titlePageController,
                physics: NeverScrollableScrollPhysics(),
                children: labelsAndContent.item1,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _contentPageController,
                onPageChanged: (value) => _titlePageController.animateToPage(
                    value,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.fastLinearToSlowEaseIn),
                children: labelsAndContent.item2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  final String label;
  Label(this.label);
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final titleStyle = themeData.textTheme.headline4;
    return Transform.translate(
      offset: Offset(-42, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          label,
          style: titleStyle,
        ),
      ),
    );
  }
}
