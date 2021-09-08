import 'package:podcast_search/podcast_search.dart' as podcast;
import 'package:rxdart/rxdart.dart';

class PodcastService {
  BehaviorSubject<List<podcast.Item>> _controller =
      BehaviorSubject<List<podcast.Item>>();
  Stream _stream;
  int _currentPage = 1;
  PodcastService() {
    init();
  }
  void init() {
    _stream = _controller.stream;
    getMorePodcast();
  }

  void dispose() {
    _controller.close();
  }

  List<podcast.Item> get initialData => _controller.valueOrNull;

  Stream<List<podcast.Item>> get stream => _stream;

  void getMorePodcast() {
    podcast.Search().charts(limit: _currentPage * 20).then((value) {
      _sinkBloc(value.items);
      _currentPage++;
    });
  }

  void _sinkBloc(List<podcast.Item> event) => _controller.sink.add(event);
}
