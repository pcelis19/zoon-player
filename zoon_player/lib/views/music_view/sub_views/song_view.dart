import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:zoon_player/widgets/background.dart';

class SongView extends StatelessWidget {
  final List<SongInfo> allSongs;
  final PageController _scrollController;
  SongView(int index, this.allSongs)
      : _scrollController = PageController(initialPage: index);
  @override
  Widget build(BuildContext context) {
    return Background(
      _scrollController,
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: PageView.builder(
            controller: _scrollController,
            itemCount: allSongs.length,
            itemBuilder: (context, index) => Column(
              children: [
                Text(allSongs[index].title),
                ListTile(
                  leading: Icon(Icons.play_arrow),
                  title: Text("play"),
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("add to now playing"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
