import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';
import 'package:zoon_player/views/music_view/sub_widgets/music_query_list.dart';
import 'package:zoon_player/services/music_service.dart';
import 'package:zoon_player/views/music_view/sub_widgets/label_text.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';

class MusicView extends StatelessWidget {
  final String title;

  MusicView(this.title, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Provider<_MusicMembers>(
      create: (_) => _MusicMembers(),
      dispose: (context, value) => value.dispose(),
      builder: (context, child) {
        final musicMembers = Provider.of<_MusicMembers>(context);
        return Background(
          scrollController: musicMembers.titlePageController,
          scaffold: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: MainMenuText(title: title),
              elevation: 8,
            ),
            body: GestureDetector(
              onHorizontalDragUpdate: (details) {
                final titleController = musicMembers.titlePageController;
                final contentController = musicMembers.queryPageController;
                double sensitivity = .3;
                // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                if (details.delta.dx > sensitivity) {
                  titleController.previousPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInToLinear);
                  contentController.previousPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInToLinear);
                  // Right Swipe
                } else if (details.delta.dx < -sensitivity) {
                  titleController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInToLinear);
                  contentController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInToLinear);

                  //Left Swipe
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: PageView(
                      controller: musicMembers.titlePageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: musicMembers.labelsAndContent.item1,
                    ),
                  ),
                  Expanded(
                    child: PageView(
                      controller: musicMembers.queryPageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: musicMembers.labelsAndContent.item2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Label extends StatelessWidget {
  final String label;
  Label(this.label);
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-42, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: LabelText(title: label),
      ),
    );
  }
}

class _MusicMembers {
  final PageController queryPageController = PageController();
  final PageController titlePageController =
      PageController(viewportFraction: .6);
  // list controllers
  final songsController = ScrollController();
  final genresController = ScrollController();
  final albumsController = ScrollController();
  final artistsController = ScrollController();
  final playlistsController = ScrollController();
  final Tuple2<List<Label>, List<Widget>> labelsAndContent =
      Tuple2(<Label>[], <Widget>[]);

  _MusicMembers() {
    List<Label> labels = <Label>[
      Label("songs"),
      Label("genres"),
      Label("albums"),
      Label("artists"),
      Label("playlist"),
    ];
    List<Widget> widgets = <Widget>[
      MusicQueryList(MusicQueryType.songs, songsController),
      MusicQueryList(MusicQueryType.genres, genresController),
      MusicQueryList(MusicQueryType.albums, albumsController),
      MusicQueryList(MusicQueryType.artists, artistsController),
      MusicQueryList(MusicQueryType.playlists, playlistsController),
    ];
    for (Label label in labels) labelsAndContent.item1.add(label);
    for (Widget widget in widgets) labelsAndContent.item2.add(widget);
  }
  void dispose() {
    queryPageController.dispose();
    titlePageController.dispose();

    // list controllers
    songsController.dispose();
    genresController.dispose();
    albumsController.dispose();
    artistsController.dispose();
    playlistsController.dispose();
  }
}
