// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'podcast_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PodcastResults {
  List<PodcastResult> get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastResultsCopyWith<PodcastResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastResultsCopyWith<$Res> {
  factory $PodcastResultsCopyWith(
          PodcastResults value, $Res Function(PodcastResults) then) =
      _$PodcastResultsCopyWithImpl<$Res>;
  $Res call({List<PodcastResult> result});
}

/// @nodoc
class _$PodcastResultsCopyWithImpl<$Res>
    implements $PodcastResultsCopyWith<$Res> {
  _$PodcastResultsCopyWithImpl(this._value, this._then);

  final PodcastResults _value;
  // ignore: unused_field
  final $Res Function(PodcastResults) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PodcastResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_PodcastResultsCopyWith<$Res>
    implements $PodcastResultsCopyWith<$Res> {
  factory _$$_PodcastResultsCopyWith(
          _$_PodcastResults value, $Res Function(_$_PodcastResults) then) =
      __$$_PodcastResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<PodcastResult> result});
}

/// @nodoc
class __$$_PodcastResultsCopyWithImpl<$Res>
    extends _$PodcastResultsCopyWithImpl<$Res>
    implements _$$_PodcastResultsCopyWith<$Res> {
  __$$_PodcastResultsCopyWithImpl(
      _$_PodcastResults _value, $Res Function(_$_PodcastResults) _then)
      : super(_value, (v) => _then(v as _$_PodcastResults));

  @override
  _$_PodcastResults get _value => super._value as _$_PodcastResults;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_PodcastResults(
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PodcastResult>,
    ));
  }
}

/// @nodoc

class _$_PodcastResults extends _PodcastResults {
  const _$_PodcastResults({required final List<PodcastResult> result})
      : _result = result,
        super._();

  final List<PodcastResult> _result;
  @override
  List<PodcastResult> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'PodcastResults(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastResults &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_PodcastResultsCopyWith<_$_PodcastResults> get copyWith =>
      __$$_PodcastResultsCopyWithImpl<_$_PodcastResults>(this, _$identity);
}

abstract class _PodcastResults extends PodcastResults {
  const factory _PodcastResults({required final List<PodcastResult> result}) =
      _$_PodcastResults;
  const _PodcastResults._() : super._();

  @override
  List<PodcastResult> get result;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastResultsCopyWith<_$_PodcastResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PodcastResult {
  String get feedUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get artist => throw _privateConstructorUsedError;
  String get imageLg => throw _privateConstructorUsedError;
  String get imageMd => throw _privateConstructorUsedError;
  String get imageSm => throw _privateConstructorUsedError;
  String get imageXsm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PodcastResultCopyWith<PodcastResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastResultCopyWith<$Res> {
  factory $PodcastResultCopyWith(
          PodcastResult value, $Res Function(PodcastResult) then) =
      _$PodcastResultCopyWithImpl<$Res>;
  $Res call(
      {String feedUrl,
      String name,
      String artist,
      String imageLg,
      String imageMd,
      String imageSm,
      String imageXsm});
}

/// @nodoc
class _$PodcastResultCopyWithImpl<$Res>
    implements $PodcastResultCopyWith<$Res> {
  _$PodcastResultCopyWithImpl(this._value, this._then);

  final PodcastResult _value;
  // ignore: unused_field
  final $Res Function(PodcastResult) _then;

  @override
  $Res call({
    Object? feedUrl = freezed,
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageLg = freezed,
    Object? imageMd = freezed,
    Object? imageSm = freezed,
    Object? imageXsm = freezed,
  }) {
    return _then(_value.copyWith(
      feedUrl: feedUrl == freezed
          ? _value.feedUrl
          : feedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageLg: imageLg == freezed
          ? _value.imageLg
          : imageLg // ignore: cast_nullable_to_non_nullable
              as String,
      imageMd: imageMd == freezed
          ? _value.imageMd
          : imageMd // ignore: cast_nullable_to_non_nullable
              as String,
      imageSm: imageSm == freezed
          ? _value.imageSm
          : imageSm // ignore: cast_nullable_to_non_nullable
              as String,
      imageXsm: imageXsm == freezed
          ? _value.imageXsm
          : imageXsm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PodcastResultCopyWith<$Res>
    implements $PodcastResultCopyWith<$Res> {
  factory _$$_PodcastResultCopyWith(
          _$_PodcastResult value, $Res Function(_$_PodcastResult) then) =
      __$$_PodcastResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String feedUrl,
      String name,
      String artist,
      String imageLg,
      String imageMd,
      String imageSm,
      String imageXsm});
}

/// @nodoc
class __$$_PodcastResultCopyWithImpl<$Res>
    extends _$PodcastResultCopyWithImpl<$Res>
    implements _$$_PodcastResultCopyWith<$Res> {
  __$$_PodcastResultCopyWithImpl(
      _$_PodcastResult _value, $Res Function(_$_PodcastResult) _then)
      : super(_value, (v) => _then(v as _$_PodcastResult));

  @override
  _$_PodcastResult get _value => super._value as _$_PodcastResult;

  @override
  $Res call({
    Object? feedUrl = freezed,
    Object? name = freezed,
    Object? artist = freezed,
    Object? imageLg = freezed,
    Object? imageMd = freezed,
    Object? imageSm = freezed,
    Object? imageXsm = freezed,
  }) {
    return _then(_$_PodcastResult(
      feedUrl: feedUrl == freezed
          ? _value.feedUrl
          : feedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      imageLg: imageLg == freezed
          ? _value.imageLg
          : imageLg // ignore: cast_nullable_to_non_nullable
              as String,
      imageMd: imageMd == freezed
          ? _value.imageMd
          : imageMd // ignore: cast_nullable_to_non_nullable
              as String,
      imageSm: imageSm == freezed
          ? _value.imageSm
          : imageSm // ignore: cast_nullable_to_non_nullable
              as String,
      imageXsm: imageXsm == freezed
          ? _value.imageXsm
          : imageXsm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PodcastResult extends _PodcastResult {
  const _$_PodcastResult(
      {required this.feedUrl,
      required this.name,
      required this.artist,
      required this.imageLg,
      required this.imageMd,
      required this.imageSm,
      required this.imageXsm})
      : super._();

  @override
  final String feedUrl;
  @override
  final String name;
  @override
  final String artist;
  @override
  final String imageLg;
  @override
  final String imageMd;
  @override
  final String imageSm;
  @override
  final String imageXsm;

  @override
  String toString() {
    return 'PodcastResult(feedUrl: $feedUrl, name: $name, artist: $artist, imageLg: $imageLg, imageMd: $imageMd, imageSm: $imageSm, imageXsm: $imageXsm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastResult &&
            const DeepCollectionEquality().equals(other.feedUrl, feedUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.imageLg, imageLg) &&
            const DeepCollectionEquality().equals(other.imageMd, imageMd) &&
            const DeepCollectionEquality().equals(other.imageSm, imageSm) &&
            const DeepCollectionEquality().equals(other.imageXsm, imageXsm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(imageLg),
      const DeepCollectionEquality().hash(imageMd),
      const DeepCollectionEquality().hash(imageSm),
      const DeepCollectionEquality().hash(imageXsm));

  @JsonKey(ignore: true)
  @override
  _$$_PodcastResultCopyWith<_$_PodcastResult> get copyWith =>
      __$$_PodcastResultCopyWithImpl<_$_PodcastResult>(this, _$identity);
}

abstract class _PodcastResult extends PodcastResult {
  const factory _PodcastResult(
      {required final String feedUrl,
      required final String name,
      required final String artist,
      required final String imageLg,
      required final String imageMd,
      required final String imageSm,
      required final String imageXsm}) = _$_PodcastResult;
  const _PodcastResult._() : super._();

  @override
  String get feedUrl;
  @override
  String get name;
  @override
  String get artist;
  @override
  String get imageLg;
  @override
  String get imageMd;
  @override
  String get imageSm;
  @override
  String get imageXsm;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastResultCopyWith<_$_PodcastResult> get copyWith =>
      throw _privateConstructorUsedError;
}
