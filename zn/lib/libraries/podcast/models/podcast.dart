import 'package:freezed_annotation/freezed_annotation.dart';
part 'podcast.freezed.dart';

@freezed
class Podcast with _$Podcast {
  const factory Podcast({
    required String name,
    required String artist,
    required String? description,
    required String? imageUrlLg,
    required String? imageUrlSm,
    required List<PodcastEpisode> episodes,
  }) = _Podcast;
  const Podcast._();
}

@freezed
class PodcastEpisode with _$PodcastEpisode {
  const factory PodcastEpisode({
    required String title,
    required String? description,
    required String audioFeed,
  }) = _PodcastEpisode;

  const PodcastEpisode._();
}
