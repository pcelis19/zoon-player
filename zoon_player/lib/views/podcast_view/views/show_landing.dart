import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:podcast_search/podcast_search.dart';
import 'package:zoon_player/views/podcast_view/widgets/hero_network_images.dart';
import 'package:zoon_player/views/podcast_view/widgets/podcast_network_images.dart';
import 'package:zoon_player/widgets/background.dart';

Future<Podcast> myPodcastLoad(String url) async =>
    await Podcast.loadFeed(url: url);

class ShowLanding extends StatelessWidget {
  final Item item;
  final controller = ScrollController();

  ShowLanding({@required this.item});
  @override
  Widget build(BuildContext context) {
    return Background(
      controller,
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: FutureBuilder<Podcast>(
            future: podcast,
            builder: (context, snapshot) {
              return AnimatedSwitcher(
                duration: Duration(milliseconds: 700),
                child: getChild(snapshot),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<Podcast> get podcast async =>
      // await Podcast.loadFeed(url: item.feedUrl);
      compute<String, Podcast>(myPodcastLoad, item.feedUrl);

  Widget getChild(AsyncSnapshot<Podcast> snapshot) {
    if (snapshot.hasError) {
      return Center(child: Text(snapshot.error));
    } else if (!snapshot.hasData) {
      return Center(
          child: LoadingPodcastIndicator(
        item: item,
      ));
    } else {
      return PodcastLandingPage(
          podcastData: snapshot.data, item: item, controller: controller);
    }
  }
}

class LoadingPodcastIndicator extends StatelessWidget {
  final Item item;

  const LoadingPodcastIndicator({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(item.artistName),
        Container(
          margin: const EdgeInsets.only(top: 3, bottom: 9),
          width: MediaQuery.of(context).size.width * .10,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          ),
        )
      ],
    );
  }
}

class PodcastLandingPage extends StatelessWidget {
  final Podcast podcastData;
  final Item item;
  final ScrollController controller;

  const PodcastLandingPage(
      {Key key,
      @required this.podcastData,
      @required this.item,
      @required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          title: Text(item.artistName),
          floating: true,
          centerTitle: true,
          elevation: 12,
          actions: [
            IconButton(
              onPressed: () => print('favorite'),
              icon: Icon(Icons.favorite_outline),
            )
          ],
          flexibleSpace: PodcastBanner(
            item: item,
            podcast: podcastData,
          ),
          expandedHeight: MediaQuery.of(context).size.width,
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((_, index) {
            final episode = podcastData.episodes[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  child: PodcastImage100SlamWidth(
                    item: item,
                  ),
                ),
                title: Text(
                  episode.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(getDate(episode.publicationDate)),
                    Text(getDuration(episode.duration))
                  ],
                ),
              ),
            );
          }, childCount: podcastData.episodes.length),
        ),
      ],
    );
  }

  String getDuration(Duration duration) {
    if (duration == null) {
      return '';
    } else {
      String hours = duration.inHours.toString().padLeft(2, '0');
      String minutes = (duration.inMinutes - duration.inHours * 60)
          .toString()
          .padLeft(2, '0');
      return "${hours}h ${minutes}m";
    }
  }

  String getDate(DateTime dateTime) {
    if (dateTime == null) {
      return '';
    } else {
      return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
    }
  }
}

class PodcastBanner extends StatelessWidget {
  const PodcastBanner({
    Key key,
    @required this.item,
    @required this.podcast,
  }) : super(key: key);

  final Item item;
  final Podcast podcast;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PodcastHeroImage600SlamWidth(
          item: item,
        ),
        Container(
          color: Colors.black87,
          child: Column(
            children: [
              SizedBox(
                height: AppBar().preferredSize.height,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      podcast.description ?? "",
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
