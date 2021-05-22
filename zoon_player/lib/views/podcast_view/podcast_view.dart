import 'package:flutter/material.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/feature_pending.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';
import 'package:podcast_search/podcast_search.dart';

class PodcastsView extends StatelessWidget {
  final String title;
  final ScrollController _scrollController = ScrollController();
  final topPodcasts =
      Search().charts(country: Country.UNITED_STATES, limit: 30);
  PodcastsView(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        _scrollController,
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: MainMenuText(title: title)),
          body: FutureBuilder<SearchResult>(
            future: topPodcasts,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.hasData) {
                final List<Widget> children = [];
                for (Item item in snapshot.data.items) {
                  if (item.artworkUrl100 != null) {
                    children.add(
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(
                          onPressed: () => pendingFeature(context),
                          child: Card(
                            color: Colors.white,
                            elevation: 8,
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: Image.network(item.artworkUrl100)),
                          ),
                        ),
                      ),
                    );
                  }
                }
                return GridView.count(
                  controller: _scrollController,
                  crossAxisCount: 3,
                  children: children,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
              }
            },
          ),
        )));
  }
}
