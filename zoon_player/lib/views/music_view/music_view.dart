import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';

class MusicView extends StatelessWidget {
  final String title;

  MusicView(this.title, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      null,
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: MainMenuText(title: title),
          elevation: 8,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Under construction'),
          ],
        ),
      ),
    );
  }
}

// class MusicView extends StatelessWidget {
//   final String title;

//   MusicView(this.title, {Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       create: (_) => _MusicMembers(),
//       dispose: (context, value) => value.dispose(),
//       builder: (context, child) {
//         final musicMembers = Provider.of<_MusicMembers>(context);
//         return Background(
//           musicMembers.titlePageController,
//           Scaffold(
//             backgroundColor: Colors.transparent,
//             appBar: AppBar(
//               title: MainMenuText(title: title),
//               elevation: 8,
//             ),
//             body: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 60,
//                   width: double.infinity,
//                   child: PageView(
//                     controller: musicMembers.titlePageController,
//                     physics: NeverScrollableScrollPhysics(),
//                     children: musicMembers.labelsAndContent.item1,
//                   ),
//                 ),
//                 Expanded(
//                   child: PageView(
//                     controller: musicMembers.queryPageController,
//                     onPageChanged: (value) => musicMembers.titlePageController
//                         .animateToPage(value,
//                             duration: Duration(milliseconds: 300),
//                             curve: Curves.fastLinearToSlowEaseIn),
//                     children: musicMembers.labelsAndContent.item2,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class Label extends StatelessWidget {
//   final String label;
//   Label(this.label);
//   @override
//   Widget build(BuildContext context) {
//     return Transform.translate(
//       offset: Offset(-42, 0),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: LabelText(title: label),
//       ),
//     );
//   }
// }

// class _MusicMembers {
//   final PageController queryPageController = PageController();
//   final PageController titlePageController =
//       PageController(viewportFraction: .6);
//   // list controllers
//   final songsController = ScrollController();
//   final genresController = ScrollController();
//   final albumsController = ScrollController();
//   final artistsController = ScrollController();
//   final playlistsController = ScrollController();
//   final Tuple2<List<Label>, List<Widget>> labelsAndContent =
//       Tuple2(<Label>[], <Widget>[]);

//   _MusicMembers() {
//     List<Label> labels = <Label>[
//       Label("songs"),
//       Label("genres"),
//       Label("albums"),
//       Label("artists"),
//       Label("playlist"),
//     ];
//     List<Widget> widgets = <Widget>[
//       MusicQueryList(MusicQueryType.songs, songsController),
//       MusicQueryList(MusicQueryType.genres, genresController),
//       MusicQueryList(MusicQueryType.albums, albumsController),
//       MusicQueryList(MusicQueryType.artists, artistsController),
//       MusicQueryList(MusicQueryType.playlists, playlistsController),
//     ];
//     for (Label label in labels) labelsAndContent.item1.add(label);
//     for (Widget widget in widgets) labelsAndContent.item2.add(widget);
//   }
//   void dispose() {
//     queryPageController.dispose();
//     titlePageController.dispose();

//     // list controllers
//     songsController.dispose();
//     genresController.dispose();
//     albumsController.dispose();
//     artistsController.dispose();
//     playlistsController.dispose();
//   }
// }
