import 'package:flutter/material.dart';
import 'package:zoon_player/services/podcast_service.dart';
import 'package:zoon_player/widgets/background.dart';
import 'package:zoon_player/widgets/feature_pending.dart';
import 'package:zoon_player/widgets/main_menu_text.dart';
import 'package:podcast_search/podcast_search.dart';

class PodcastsView extends StatelessWidget {
  final String title;
  final PodcastService service;
  final ScrollController _scrollController = ScrollController();
  final topPodcasts =
      Search().charts(country: Country.UNITED_STATES, limit: 30);
  PodcastsView({@required this.title, @required this.service, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        _scrollController,
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: MainMenuText(title: title)),
          body: StreamBuilder<List<Item>>(
            stream: service.stream,
            initialData: service.initialData,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else if (snapshot.hasData) {
                List<Item> refinedList = refineList(snapshot.data);
                return GridView.builder(
                  itemCount: refinedList.length,
                  controller: _scrollController,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextButton(
                      onPressed: () => pendingFeature(context),
                      child: Card(
                        color: Colors.white,
                        elevation: 16,
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            child: Image.network(
                                refinedList[index].artworkUrl100)),
                      ),
                    ),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
              }
            },
          ),
        )));
  }

  List<Item> refineList(List<Item> items) {
    return items.where((element) => element.artworkUrl100 != null).toList();
  }
}
