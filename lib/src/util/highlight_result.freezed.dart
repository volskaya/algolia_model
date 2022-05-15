// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'highlight_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlgoliaHighlightResult _$AlgoliaHighlightResultFromJson(
    Map<String, dynamic> json) {
  return _AlgoliaHighlightResult.fromJson(json);
}

/// @nodoc
mixin _$AlgoliaHighlightResult {
  @JsonKey()
  String get value => throw _privateConstructorUsedError;
  @JsonKey()
  AlgoliaHighlightMatchLevel get matchLevel =>
      throw _privateConstructorUsedError;
  @JsonKey()
  List<String> get matchedWords => throw _privateConstructorUsedError;
  @JsonKey()
  bool get fullyHighlighted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlgoliaHighlightResultCopyWith<AlgoliaHighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlgoliaHighlightResultCopyWith<$Res> {
  factory $AlgoliaHighlightResultCopyWith(AlgoliaHighlightResult value,
          $Res Function(AlgoliaHighlightResult) then) =
      _$AlgoliaHighlightResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey() String value,
      @JsonKey() AlgoliaHighlightMatchLevel matchLevel,
      @JsonKey() List<String> matchedWords,
      @JsonKey() bool fullyHighlighted});
}

/// @nodoc
class _$AlgoliaHighlightResultCopyWithImpl<$Res>
    implements $AlgoliaHighlightResultCopyWith<$Res> {
  _$AlgoliaHighlightResultCopyWithImpl(this._value, this._then);

  final AlgoliaHighlightResult _value;
  // ignore: unused_field
  final $Res Function(AlgoliaHighlightResult) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? matchLevel = freezed,
    Object? matchedWords = freezed,
    Object? fullyHighlighted = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      matchLevel: matchLevel == freezed
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as AlgoliaHighlightMatchLevel,
      matchedWords: matchedWords == freezed
          ? _value.matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullyHighlighted: fullyHighlighted == freezed
          ? _value.fullyHighlighted
          : fullyHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AlgoliaHighlightResultCopyWith<$Res>
    implements $AlgoliaHighlightResultCopyWith<$Res> {
  factory _$$_AlgoliaHighlightResultCopyWith(_$_AlgoliaHighlightResult value,
          $Res Function(_$_AlgoliaHighlightResult) then) =
      __$$_AlgoliaHighlightResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey() String value,
      @JsonKey() AlgoliaHighlightMatchLevel matchLevel,
      @JsonKey() List<String> matchedWords,
      @JsonKey() bool fullyHighlighted});
}

/// @nodoc
class __$$_AlgoliaHighlightResultCopyWithImpl<$Res>
    extends _$AlgoliaHighlightResultCopyWithImpl<$Res>
    implements _$$_AlgoliaHighlightResultCopyWith<$Res> {
  __$$_AlgoliaHighlightResultCopyWithImpl(_$_AlgoliaHighlightResult _value,
      $Res Function(_$_AlgoliaHighlightResult) _then)
      : super(_value, (v) => _then(v as _$_AlgoliaHighlightResult));

  @override
  _$_AlgoliaHighlightResult get _value =>
      super._value as _$_AlgoliaHighlightResult;

  @override
  $Res call({
    Object? value = freezed,
    Object? matchLevel = freezed,
    Object? matchedWords = freezed,
    Object? fullyHighlighted = freezed,
  }) {
    return _then(_$_AlgoliaHighlightResult(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      matchLevel: matchLevel == freezed
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as AlgoliaHighlightMatchLevel,
      matchedWords: matchedWords == freezed
          ? _value._matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullyHighlighted: fullyHighlighted == freezed
          ? _value.fullyHighlighted
          : fullyHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlgoliaHighlightResult implements _AlgoliaHighlightResult {
  const _$_AlgoliaHighlightResult(
      {@JsonKey() required this.value,
      @JsonKey() required this.matchLevel,
      @JsonKey() final List<String> matchedWords = const <String>[],
      @JsonKey() this.fullyHighlighted = false})
      : _matchedWords = matchedWords;

  factory _$_AlgoliaHighlightResult.fromJson(Map<String, dynamic> json) =>
      _$$_AlgoliaHighlightResultFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final AlgoliaHighlightMatchLevel matchLevel;
  final List<String> _matchedWords;
  @override
  @JsonKey()
  List<String> get matchedWords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedWords);
  }

  @override
  @JsonKey()
  final bool fullyHighlighted;

  @override
  String toString() {
    return 'AlgoliaHighlightResult(value: $value, matchLevel: $matchLevel, matchedWords: $matchedWords, fullyHighlighted: $fullyHighlighted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlgoliaHighlightResult &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.matchLevel, matchLevel) &&
            const DeepCollectionEquality()
                .equals(other._matchedWords, _matchedWords) &&
            const DeepCollectionEquality()
                .equals(other.fullyHighlighted, fullyHighlighted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(matchLevel),
      const DeepCollectionEquality().hash(_matchedWords),
      const DeepCollectionEquality().hash(fullyHighlighted));

  @JsonKey(ignore: true)
  @override
  _$$_AlgoliaHighlightResultCopyWith<_$_AlgoliaHighlightResult> get copyWith =>
      __$$_AlgoliaHighlightResultCopyWithImpl<_$_AlgoliaHighlightResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlgoliaHighlightResultToJson(this);
  }
}

abstract class _AlgoliaHighlightResult implements AlgoliaHighlightResult {
  const factory _AlgoliaHighlightResult(
      {@JsonKey() required final String value,
      @JsonKey() required final AlgoliaHighlightMatchLevel matchLevel,
      @JsonKey() final List<String> matchedWords,
      @JsonKey() final bool fullyHighlighted}) = _$_AlgoliaHighlightResult;

  factory _AlgoliaHighlightResult.fromJson(Map<String, dynamic> json) =
      _$_AlgoliaHighlightResult.fromJson;

  @override
  @JsonKey()
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey()
  AlgoliaHighlightMatchLevel get matchLevel =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey()
  List<String> get matchedWords => throw _privateConstructorUsedError;
  @override
  @JsonKey()
  bool get fullyHighlighted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AlgoliaHighlightResultCopyWith<_$_AlgoliaHighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}
