import 'package:flutter/material.dart';
import 'package:podcast_search/podcast_search.dart';

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
    return _ImageSlamWidth(url: item.artworkUrl100);
  }
}

class PodcastImage600SlamWidth extends StatelessWidget {
  final Item item;

  const PodcastImage600SlamWidth({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ImageSlamWidth(url: item.artworkUrl600);
  }
}

class _ImageSlamWidth extends StatelessWidget {
  final String url;

  const _ImageSlamWidth({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.fitWidth,
    );
  }
}
