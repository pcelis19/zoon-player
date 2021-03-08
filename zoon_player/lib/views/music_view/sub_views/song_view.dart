import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/services/music_service.dart';
import 'package:zoon_player/views/music_view/sub_widgets/label_text.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/feature_pending.dart';

class SongView extends StatefulWidget {
  final List<SongInfo> allSongs;
  final PageController _songPageController;
  final PageController _albumPageController;
  final int index;
  SongView({this.index, this.allSongs})
      : _songPageController =
            PageController(initialPage: index, viewportFraction: .4),
        _albumPageController =
            PageController(initialPage: index, viewportFraction: .9);

  @override
  _SongViewState createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
  int currentPage;
  int previousPage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = widget.index;
    previousPage = currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final songTextStyle = theme.primaryTextTheme.headline1.copyWith(
        fontSize: theme.primaryTextTheme.headline6.fontSize,
        color: Colors.white);
    final disabledColored = theme.disabledColor;
    return Background(
      widget._songPageController,
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: LabelText(title: 'songs'),
          ),
          body: GestureDetector(
            onHorizontalDragUpdate: (details) {
              double sensitivity = .3;
              // Note: Sensitivity is integer used when you don't want to mess up vertical drag
              if (details.delta.dx > sensitivity) {
                widget._songPageController.previousPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInToLinear);
                widget._albumPageController.previousPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInToLinear);
                // Right Swipe
              } else if (details.delta.dx < -sensitivity) {
                widget._songPageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInToLinear);
                widget._albumPageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInToLinear);

                //Left Swipe
              }
            },
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PageView.builder(
                      controller: widget._albumPageController,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.allSongs.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder<Uint8List>(
                            future: Provider.of<MusicService>(context)
                                .getArtwork(widget.allSongs[index]),
                            builder: (context, snapshot) {
                              if (snapshot.hasData &&
                                  snapshot.data != null &&
                                  snapshot.data.isNotEmpty) {
                                return Image.memory(
                                  snapshot.data,
                                );
                              } else {
                                return Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                        widget.allSongs[currentPage].album !=
                                                null
                                            ? widget.allSongs[currentPage].album
                                            : 'no album info'),
                                  ),
                                );
                              }
                            }),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PageView.builder(
                      controller: widget._songPageController,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.allSongs.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            widget.allSongs[index].title,
                            style: index == currentPage
                                ? songTextStyle
                                : songTextStyle.copyWith(
                                    color: disabledColored),
                          ),
                        ),
                      ),
                      onPageChanged: (value) => setState(() {
                        previousPage = currentPage;
                        currentPage = value;
                      }),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          title: Text("play"),
                          onTap: () => pendingFeature(context),
                        ),
                        ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            title: Text("add to now playing"),
                            onTap: () => pendingFeature(context)),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: null,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
