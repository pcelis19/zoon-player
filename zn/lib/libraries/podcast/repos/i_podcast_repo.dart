import 'package:zn/lib.dart';

abstract class IPodcastRepo {
  Future<DataRequest<PodcastResults>> getPodcasts(String searchQuery);

  Future<DataRequest<PodcastResults>> getTrendingPodcasts({int limit = 40});

  Future<DataRequest<Podcast>> getPodcast(String source);
}
