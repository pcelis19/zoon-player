import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/services/music_service.dart';
import 'package:zoon_player/views/music_view/sub_views/song_view.dart';

class MusicQueryList extends StatelessWidget {
  final MusicQueryType queryType;
  final ScrollController scrollController;

  const MusicQueryList(this.queryType, this.scrollController, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<MusicService>(context);
    return FutureBuilder<List>(
        future: service.fetchInfo(queryType),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            final items = snapshot.data;

            return Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: ListView.builder(
                itemCount: items.length + 1,
                itemBuilder: (context, index) => Align(
                    alignment: Alignment.centerLeft,
                    child: index == 0
                        ? TextButton(
                            onPressed: () => print('shuffle'),
                            child: Text(
                              'shuffle all',
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            ))
                        : _ItemButton(queryType, index - 1, items)),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class _ItemButton extends StatelessWidget {
  final MusicQueryType queryType;
  final int index;
  final items;

  _ItemButton(this.queryType, this.index, this.items);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).primaryTextTheme.bodyText1;
    if (queryType == MusicQueryType.songs) {
      final song = items[index] as SongInfo;
      final songs = items as List<SongInfo>;
      return TextButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => SongView(index, songs))),
        child: Text(
          song.title,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.genres) {
      final genre = items[index] as GenreInfo;
      return TextButton(
        onPressed: () => print(genre.toString()),
        child: Text(
          genre.name,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.albums) {
      final album = items[index] as AlbumInfo;
      return TextButton(
        onPressed: () => print(album.toString()),
        child: Text(
          album.title,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.artists) {
      final artist = items[index] as ArtistInfo;
      return TextButton(
        onPressed: () => print(artist.toString()),
        child: Text(
          artist.name,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.playlists) {
      final playlist = items[index] as PlaylistInfo;
      return TextButton(
        onPressed: () => print(playlist.toString()),
        child: Text(
          playlist.name,
          style: textTheme,
        ),
      );
    } else
      throw UnimplementedError(
          'Music query type unaccounted for: ${queryType.toString()}');
  }
}
