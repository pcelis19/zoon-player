import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:provider/provider.dart';
import 'package:zoon_player/services/music_service.dart';

class AlbumCoverArt extends StatelessWidget {
  final DataModel fileInfo;

  const AlbumCoverArt(this.fileInfo, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
      child: getChild(context),
    );
  }

  Widget getChild(BuildContext context) {
    String fileLocation =
        location; // location is not available then we have to go the new way api 29+

    if (fileLocation != null && fileLocation.isNotEmpty) {
      return Image.file(File(fileLocation));
    } else {
      return FutureBuilder<Uint8List>(
          future: Provider.of<MusicService>(context).getArtwork(fileInfo),
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.data != null &&
                snapshot.data.isNotEmpty) {
              return Image.memory(
                snapshot.data,
                fit: BoxFit.fill,
              );
            } else {
              return Container(
                color: Colors.black,
                child: Center(
                  child: Text(artworkLabel),
                ),
              );
            }
          });
    }
  }

  String get artworkLabel {
    String artworkLabel = 'no album info';
    if (fileInfo is SongInfo && (fileInfo as SongInfo).album != null)
      artworkLabel = (fileInfo as SongInfo).album;
    if (fileInfo is ArtistInfo && (fileInfo as ArtistInfo).name != null)
      artworkLabel = (fileInfo as ArtistInfo).name;
    if (fileInfo is AlbumInfo && (fileInfo as AlbumInfo).title != null)
      artworkLabel = (fileInfo as AlbumInfo).title;
    return artworkLabel;
  }

  String get location {
    if (fileInfo is SongInfo) {
      final song = fileInfo as SongInfo;
      if (song.albumArtwork != null) return song.albumArtwork;
    } else if (fileInfo is AlbumInfo) {
      final album = fileInfo as AlbumInfo;
      if (album.albumArt != null) return album.albumArt;
    } else if (fileInfo is ArtistInfo) {
      final artist = fileInfo as ArtistInfo;
      if (artist.artistArtPath != null) return artist.artistArtPath;
    }
    return null;
  }
}
