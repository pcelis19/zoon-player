import 'package:flutter/foundation.dart';
import 'package:podcast_search/podcast_search.dart' as pS;
import 'package:zn/lib.dart';
import 'package:zn/mixins/safe_data_request_mixin.dart';

late final _search = pS.Search();

class ITunesPodcastRepo extends IPodcastRepo with SafeDataRequestMixin {
  @override
  Future<DataRequest<Podcast>> getPodcast(String source) {
    // TODO: implement getPodcast
    throw UnimplementedError();
  }

  @override
  Future<DataRequest<PodcastResults>> getPodcasts(String searchQuery) {
    return safeDataRequest<PodcastResults, pS.SearchResult>(
      dataRequest: () => _search.search(
        searchQuery,
        country: pS.Country.UNITED_STATES,
      ),
      responseToDataRequest: (response) async {
        final items = response.items;
        final convertedList = await compute(_convertItems, items);
        return DataRequest.data(convertedList);
      },
    );
  }

  @override
  Future<DataRequest<PodcastResults>> getTrendingPodcasts({int limit = 40}) {
    return safeDataRequest<PodcastResults, pS.SearchResult>(
      dataRequest: () => _search.charts(
        country: pS.Country.UNITED_STATES,
        limit: limit,
      ),
      responseToDataRequest: (response) async {
        final items = response.items;
        final convertedList = await compute(_convertItems, items);
        return DataRequest.data(convertedList);
      },
    );
  }
}

PodcastResults _convertItems(List<pS.Item> items) {
  final toReturn = <PodcastResult>[];
  for (final item in items) {
    final result = PodcastResult.fromPodcastSearchItem(item);
    if (result != null) {
      toReturn.add(result);
    }
  }
  return PodcastResults(result: toReturn);
}
