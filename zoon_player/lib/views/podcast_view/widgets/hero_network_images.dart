import 'package:flutter/material.dart';
import 'package:podcast_search/podcast_search.dart';

class PodcastHeroImage600SlamWidth extends StatelessWidget {
  final Item item;

  const PodcastHeroImage600SlamWidth({Key key, @required this.item})
      : super(key: key);
  void printWarnings() {
    if (item.artworkUrl600 == null) {
      print('Warning artworkUrl600 is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    printWarnings();
    return _HeroPodcastImageWidthSlam(url: item.artworkUrl600);
  }
}

class PodcastHeroImage100SlamWidth extends StatelessWidget {
  final Item item;

  const PodcastHeroImage100SlamWidth({Key key, @required this.item})
      : super(key: key);
  void printWarnings() {
    if (item.artworkUrl100 == null) {
      print('Warning artworkUrl600 is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    printWarnings();
    return _HeroPodcastImageWidthSlam(url: item.artworkUrl100);
  }
}

class _HeroPodcastImageWidthSlam extends StatelessWidget {
  final String url;

  const _HeroPodcastImageWidthSlam({Key key, @required this.url})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: url,
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
        // loadingBuilder: (_, __, loadingProgress) => Center(
        //   child: _ImageLoadingIndicator(
        //     imageChunkEvent: loadingProgress,
        //   ),
        // ),
      ),
    );
  }
}

class _ImageLoadingIndicator extends StatelessWidget {
  final ImageChunkEvent imageChunkEvent;

  const _ImageLoadingIndicator({Key key, @required this.imageChunkEvent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (imageChunkEvent != null &&
        imageChunkEvent.expectedTotalBytes != null &&
        imageChunkEvent.cumulativeBytesLoaded != null) {
      var value = imageChunkEvent.cumulativeBytesLoaded /
          imageChunkEvent.expectedTotalBytes;
      return CircularProgressIndicator(value: value);
    } else {
      return CircularProgressIndicator();
    }
  }
}
