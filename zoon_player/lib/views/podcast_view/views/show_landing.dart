import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast_search/podcast_search.dart';
import 'package:zoon_player/widgets/podcast/hero_network_images.dart';

class ShowLanding extends StatelessWidget {
  final Item item;

  ShowLanding({@required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.artistName.toString())),
      body: FutureBuilder<Podcast>(
        future: podcast,
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: getChild(snapshot),
          );
        },
      ),
    );
  }

  Future<Podcast> get podcast async => Podcast.loadFeed(url: item.feedUrl);

  Widget getChild(AsyncSnapshot<Podcast> snapshot) {
    if (snapshot.hasError) {
      return Center(child: Text(snapshot.error));
    } else if (!snapshot.hasData) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PodcastImage600SlamWidth(item: item),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      );
    } else {
      return PodcastLandingPage(
        podcastData: snapshot.data,
        item: item,
      );
    }
  }
}

class PodcastLandingPage extends StatelessWidget {
  final Podcast podcastData;
  final Item item;

  const PodcastLandingPage({
    Key key,
    @required this.podcastData,
    @required this.item,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [PodcastImage600SlamWidth(item: item)],
    );
  }
}
