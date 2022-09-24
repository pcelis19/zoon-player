import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String? imageUrl,
  }) = _PodcastResult;
  const PodcastResult._();
}
