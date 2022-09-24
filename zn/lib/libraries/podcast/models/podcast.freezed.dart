// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'podcast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Podcast {
  String get name => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrlLg => throw _privateConstructorUsedError;
  String? get imageUrlSm => throw _privateConstructorUsedError;
  List<PodcastEpisode> get episodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String artist,
      String? description,
      String? imageUrlLg,
      String? imageUrlSm,
      List<PodcastEpisode> episodes});
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res> implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  final Podcast _value;
  // ignore: unused_field
  final $Res Function(Podcast) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? description = freezed,
    Object? imageUrlLg = freezed,
    Object? imageUrlSm = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlLg: imageUrlLg == freezed
          ? _value.imageUrlLg
          : imageUrlLg // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlSm: imageUrlSm == freezed
          ? _value.imageUrlSm
          : imageUrlSm // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>,
    ));
  }
}

/// @nodoc
abstract class _$$_PodcastCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$$_PodcastCopyWith(
          _$_Podcast value, $Res Function(_$_Podcast) then) =
      __$$_PodcastCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String artist,
      String? description,
      String? imageUrlLg,
      String? imageUrlSm,
      List<PodcastEpisode> episodes});
}

/// @nodoc
class __$$_PodcastCopyWithImpl<$Res> extends _$PodcastCopyWithImpl<$Res>
    implements _$$_PodcastCopyWith<$Res> {
  __$$_PodcastCopyWithImpl(_$_Podcast _value, $Res Function(_$_Podcast) _then)
      : super(_value, (v) => _then(v as _$_Podcast));

  @override
  _$_Podcast get _value => super._value as _$_Podcast;

  @override
  $Res call({
    Object? name = freezed,
    Object? artist = freezed,
    Object? description = freezed,
    Object? imageUrlLg = freezed,
    Object? imageUrlSm = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_$_Podcast(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlLg: imageUrlLg == freezed
          ? _value.imageUrlLg
          : imageUrlLg // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrlSm: imageUrlSm == freezed
          ? _value.imageUrlSm
          : imageUrlSm // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: episodes == freezed
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<PodcastEpisode>,
    ));
  }
}

/// @nodoc

class _$_Podcast extends _Podcast {
  const _$_Podcast(
      {required this.name,
      required this.artist,
      required this.description,
      required this.imageUrlLg,
      required this.imageUrlSm,
      required final List<PodcastEpisode> episodes})
      : _episodes = episodes,
        super._();

  @override
  final String name;
  @override
  final String artist;
  @override
  final String? description;
  @override
  final String? imageUrlLg;
  @override
  final String? imageUrlSm;
  final List<PodcastEpisode> _episodes;
  @override
  List<PodcastEpisode> get episodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'Podcast(name: $name, artist: $artist, description: $description, imageUrlLg: $imageUrlLg, imageUrlSm: $imageUrlSm, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Podcast &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageUrlLg, imageUrlLg) &&
            const DeepCollectionEquality()
                .equals(other.imageUrlSm, imageUrlSm) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrlLg),
      const DeepCollectionEquality().hash(imageUrlSm),
      const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  _$$_PodcastCopyWith<_$_Podcast> get copyWith =>
      __$$_PodcastCopyWithImpl<_$_Podcast>(this, _$identity);
}

abstract class _Podcast extends Podcast {
  const factory _Podcast(
      {required final String name,
      required final String artist,
      required final String? description,
      required final String? imageUrlLg,
      required final String? imageUrlSm,
      required final List<PodcastEpisode> episodes}) = _$_Podcast;
  const _Podcast._() : super._();

  @override
  String get name;
  @override
  String get artist;
  @override
  String? get description;
  @override
  String? get imageUrlLg;
  @override
  String? get imageUrlSm;
  @override
  List<PodcastEpisode> get episodes;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastCopyWith<_$_Podcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PodcastEpisode {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get audioFeed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastEpisodeCopyWith<PodcastEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastEpisodeCopyWith<$Res> {
  factory $PodcastEpisodeCopyWith(
          PodcastEpisode value, $Res Function(PodcastEpisode) then) =
      _$PodcastEpisodeCopyWithImpl<$Res>;
  $Res call({String title, String? description, String audioFeed});
}

/// @nodoc
class _$PodcastEpisodeCopyWithImpl<$Res>
    implements $PodcastEpisodeCopyWith<$Res> {
  _$PodcastEpisodeCopyWithImpl(this._value, this._then);

  final PodcastEpisode _value;
  // ignore: unused_field
  final $Res Function(PodcastEpisode) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? audioFeed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFeed: audioFeed == freezed
          ? _value.audioFeed
          : audioFeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PodcastEpisodeCopyWith<$Res>
    implements $PodcastEpisodeCopyWith<$Res> {
  factory _$$_PodcastEpisodeCopyWith(
          _$_PodcastEpisode value, $Res Function(_$_PodcastEpisode) then) =
      __$$_PodcastEpisodeCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? description, String audioFeed});
}

/// @nodoc
class __$$_PodcastEpisodeCopyWithImpl<$Res>
    extends _$PodcastEpisodeCopyWithImpl<$Res>
    implements _$$_PodcastEpisodeCopyWith<$Res> {
  __$$_PodcastEpisodeCopyWithImpl(
      _$_PodcastEpisode _value, $Res Function(_$_PodcastEpisode) _then)
      : super(_value, (v) => _then(v as _$_PodcastEpisode));

  @override
  _$_PodcastEpisode get _value => super._value as _$_PodcastEpisode;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? audioFeed = freezed,
  }) {
    return _then(_$_PodcastEpisode(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFeed: audioFeed == freezed
          ? _value.audioFeed
          : audioFeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PodcastEpisode extends _PodcastEpisode {
  const _$_PodcastEpisode(
      {required this.title, required this.description, required this.audioFeed})
      : super._();

  @override
  final String title;
  @override
  final String? description;
  @override
  final String audioFeed;

  @override
  String toString() {
    return 'PodcastEpisode(title: $title, description: $description, audioFeed: $audioFeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastEpisode &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.audioFeed, audioFeed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(audioFeed));

  @JsonKey(ignore: true)
  @override
  _$$_PodcastEpisodeCopyWith<_$_PodcastEpisode> get copyWith =>
      __$$_PodcastEpisodeCopyWithImpl<_$_PodcastEpisode>(this, _$identity);
}

abstract class _PodcastEpisode extends PodcastEpisode {
  const factory _PodcastEpisode(
      {required final String title,
      required final String? description,
      required final String audioFeed}) = _$_PodcastEpisode;
  const _PodcastEpisode._() : super._();

  @override
  String get title;
  @override
  String? get description;
  @override
  String get audioFeed;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastEpisodeCopyWith<_$_PodcastEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}
