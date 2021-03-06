import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/services/music_service.dart';

class MusicQueryList extends StatelessWidget {
  final MusicQueryType queryType;

  const MusicQueryList(this.queryType, {Key key}) : super(key: key);

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
                        : _ItemButton(queryType, items[index - 1])),
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
  final item;

  _ItemButton(this.queryType, this.item);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).primaryTextTheme.bodyText1;
    if (queryType == MusicQueryType.songs) {
      final song = item as SongInfo;
      return TextButton(
        onPressed: () => print(song.toString()),
        child: Text(
          song.title,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.genres) {
      final genre = item as GenreInfo;
      return TextButton(
        onPressed: () => print(genre.toString()),
        child: Text(
          genre.name,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.albums) {
      final album = item as AlbumInfo;
      return TextButton(
        onPressed: () => print(album.toString()),
        child: Text(
          album.title,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.artists) {
      final artist = item as ArtistInfo;
      return TextButton(
        onPressed: () => print(artist.toString()),
        child: Text(
          artist.name,
          style: textTheme,
        ),
      );
    } else if (queryType == MusicQueryType.playlists) {
      final playlist = item as PlaylistInfo;
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
