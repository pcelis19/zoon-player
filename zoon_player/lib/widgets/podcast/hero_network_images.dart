import 'package:flutter/material.dart';
import 'package:podcast_search/podcast_search.dart';

class PodcastImage600SlamWidth extends StatelessWidget {
  final Item item;

  const PodcastImage600SlamWidth({Key key, @required this.item})
      : super(key: key);
  void printWarnings() {
    if (item.artworkUrl600 == null) {
      print('Warning artworkUrl600 is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    printWarnings();
    return Hero(
      tag: item.artworkUrl600,
      child: Image.network(
        item.artworkUrl600,
        loadingBuilder: (context, child, loadingProgress) => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class PodcastImage100SlamWidth extends StatelessWidget {
  final Item item;

  const PodcastImage100SlamWidth({Key key, @required this.item})
      : super(key: key);
  void printWarnings() {
    if (item.artworkUrl100 == null) {
      print('Warning artworkUrl600 is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    printWarnings();
    return Hero(
      tag: item.artworkUrl100,
      child: Image.network(
        item.artworkUrl100,
        loadingBuilder: (context, child, loadingProgress) => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
