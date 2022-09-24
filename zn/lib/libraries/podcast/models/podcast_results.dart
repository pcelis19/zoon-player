import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcast_search/podcast_search.dart' as podcastSearch;
import 'package:zn/lib.dart';

part 'podcast_results.freezed.dart';

@freezed
class PodcastResults with _$PodcastResults {
  const factory PodcastResults({required List<PodcastResult> result}) =
      _PodcastResults;
  const PodcastResults._();
}

@freezed
class PodcastResult with _$PodcastResult {
  const factory PodcastResult({
    required String feedUrl,
    required String name,
    required String artist,
    required String imageLg,
    required String imageMd,
    required String imageSm,
    required String imageXsm,
  }) = _PodcastResult;
  const PodcastResult._();

  static PodcastResult? fromPodcastSearchItem(podcastSearch.Item item) {
    try {
      return PodcastResult(
          feedUrl: item.feedUrl!,
          name: item.collectionName ?? item.trackName ?? item.artistName!,
          artist: item.artistName!,
          imageLg: item.artworkUrl600 ??
              item.artworkUrl100 ??
              item.artworkUrl60 ??
              item.artworkUrl30!,
          imageMd: item.artworkUrl100 ??
              item.artworkUrl600 ??
              item.artworkUrl60 ??
              item.artworkUrl30!,
          imageSm: item.artworkUrl60 ??
              item.artworkUrl30 ??
              item.artworkUrl100 ??
              item.artworkUrl600!,
          imageXsm: item.artworkUrl30 ??
              item.artworkUrl60 ??
              item.artworkUrl100 ??
              item.artworkUrl600!);
    } catch (error, stackTrace) {
      AppServices.loggerService.log(stackTrace);
      return null;
    }
  }
}
