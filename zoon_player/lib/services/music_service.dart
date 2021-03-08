import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter_audio_query/flutter_audio_query.dart';

enum MusicQueryType { songs, genres, albums, artists, playlists }

class MusicService {
  List<SongInfo> _songs;
  List<GenreInfo> _genres;
  List<AlbumInfo> _albums;
  List<ArtistInfo> _artists;
  List<PlaylistInfo> _playlists;
  final FlutterAudioQuery _flutterAudioQuery = FlutterAudioQuery();

  Future<List> fetchInfo(MusicQueryType queryType) {
    if (queryType == MusicQueryType.songs)
      return _fetchSongs;
    else if (queryType == MusicQueryType.genres)
      return _fetchGenres;
    else if (queryType == MusicQueryType.albums)
      return _fetchAlbums;
    else if (queryType == MusicQueryType.artists)
      return _fetchArtists;
    else if (queryType == MusicQueryType.playlists)
      return _fetchPlaylists;
    else
      throw UnimplementedError(
          'Music query type unaccounted for: ${queryType.toString()}');
  }

  Future<List<SongInfo>> get _fetchSongs async {
    return _mFetchSongs(1);
  }

  Future<List<GenreInfo>> get _fetchGenres async {
    return _mFetchGenres(1);
  }

  Future<List<AlbumInfo>> get _fetchAlbums async {
    return _mFetchAlbums(1);
  }

  Future<List<ArtistInfo>> get _fetchArtists async {
    return _mFetchArtists(1);
  }

  Future<List<PlaylistInfo>> get _fetchPlaylists async {
    return _mFetchPlaylists(1);
  }

  Future<Uint8List> getArtwork(SongInfo song) {
    return _flutterAudioQuery.getArtwork(type: ResourceType.SONG, id: song.id);
  }

  // TODO find a way to use compute, the private functions purposely take an argument so that they work with compute
  Future<List<SongInfo>> _mFetchSongs(int garbage) async {
    if (_songs != null && _songs.isNotEmpty) return _songs;
    _songs = await _flutterAudioQuery.getSongs();
    return _songs;
  }

  Future<List<GenreInfo>> _mFetchGenres(int garbage) async {
    if (_genres != null && _genres.isNotEmpty) return _genres;
    _genres = await _flutterAudioQuery.getGenres();
    return _genres;
  }

  Future<List<AlbumInfo>> _mFetchAlbums(int garbage) async {
    if (_albums != null && _albums.isNotEmpty) return _albums;
    _albums = await _flutterAudioQuery.getAlbums();
    return _albums;
  }

  Future<List<ArtistInfo>> _mFetchArtists(int garbage) async {
    if (_artists != null && _artists.isNotEmpty) return _artists;
    _artists = await _flutterAudioQuery.getArtists();
    return _artists;
  }

  Future<List<PlaylistInfo>> _mFetchPlaylists(int garbage) async {
    if (_playlists != null && _playlists.isNotEmpty) return _playlists;
    _playlists = await _flutterAudioQuery.getPlaylists();
    return _playlists;
  }
}
