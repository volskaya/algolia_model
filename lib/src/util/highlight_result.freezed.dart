// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'highlight_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlgoliaHighlightResult _$AlgoliaHighlightResultFromJson(
    Map<String, dynamic> json) {
  return _AlgoliaHighlightResult.fromJson(json);
}

/// @nodoc
class _$AlgoliaHighlightResultTearOff {
  const _$AlgoliaHighlightResultTearOff();

  _AlgoliaHighlightResult call(
      {@JsonKey()
          required String value,
      @JsonKey()
          required AlgoliaHighlightMatchLevel matchLevel,
      @JsonKey(defaultValue: const <String>[])
          List<String> matchedWords = const <String>[],
      @JsonKey(defaultValue: false)
          bool fullyHighlighted = false}) {
    return _AlgoliaHighlightResult(
      value: value,
      matchLevel: matchLevel,
      matchedWords: matchedWords,
      fullyHighlighted: fullyHighlighted,
    );
  }

  AlgoliaHighlightResult fromJson(Map<String, Object> json) {
    return AlgoliaHighlightResult.fromJson(json);
  }
}

/// @nodoc
const $AlgoliaHighlightResult = _$AlgoliaHighlightResultTearOff();

/// @nodoc
mixin _$AlgoliaHighlightResult {
  @JsonKey()
  String get value => throw _privateConstructorUsedError;
  @JsonKey()
  AlgoliaHighlightMatchLevel get matchLevel =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const <String>[])
  List<String> get matchedWords => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
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
      @JsonKey(defaultValue: const <String>[]) List<String> matchedWords,
      @JsonKey(defaultValue: false) bool fullyHighlighted});
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
abstract class _$AlgoliaHighlightResultCopyWith<$Res>
    implements $AlgoliaHighlightResultCopyWith<$Res> {
  factory _$AlgoliaHighlightResultCopyWith(_AlgoliaHighlightResult value,
          $Res Function(_AlgoliaHighlightResult) then) =
      __$AlgoliaHighlightResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey() String value,
      @JsonKey() AlgoliaHighlightMatchLevel matchLevel,
      @JsonKey(defaultValue: const <String>[]) List<String> matchedWords,
      @JsonKey(defaultValue: false) bool fullyHighlighted});
}

/// @nodoc
class __$AlgoliaHighlightResultCopyWithImpl<$Res>
    extends _$AlgoliaHighlightResultCopyWithImpl<$Res>
    implements _$AlgoliaHighlightResultCopyWith<$Res> {
  __$AlgoliaHighlightResultCopyWithImpl(_AlgoliaHighlightResult _value,
      $Res Function(_AlgoliaHighlightResult) _then)
      : super(_value, (v) => _then(v as _AlgoliaHighlightResult));

  @override
  _AlgoliaHighlightResult get _value => super._value as _AlgoliaHighlightResult;

  @override
  $Res call({
    Object? value = freezed,
    Object? matchLevel = freezed,
    Object? matchedWords = freezed,
    Object? fullyHighlighted = freezed,
  }) {
    return _then(_AlgoliaHighlightResult(
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

@JsonSerializable()

/// @nodoc
class _$_AlgoliaHighlightResult implements _AlgoliaHighlightResult {
  const _$_AlgoliaHighlightResult(
      {@JsonKey()
          required this.value,
      @JsonKey()
          required this.matchLevel,
      @JsonKey(defaultValue: const <String>[])
          this.matchedWords = const <String>[],
      @JsonKey(defaultValue: false)
          this.fullyHighlighted = false});

  factory _$_AlgoliaHighlightResult.fromJson(Map<String, dynamic> json) =>
      _$_$_AlgoliaHighlightResultFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final AlgoliaHighlightMatchLevel matchLevel;
  @override
  @JsonKey(defaultValue: const <String>[])
  final List<String> matchedWords;
  @override
  @JsonKey(defaultValue: false)
  final bool fullyHighlighted;

  @override
  String toString() {
    return 'AlgoliaHighlightResult(value: $value, matchLevel: $matchLevel, matchedWords: $matchedWords, fullyHighlighted: $fullyHighlighted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlgoliaHighlightResult &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.matchLevel, matchLevel) ||
                const DeepCollectionEquality()
                    .equals(other.matchLevel, matchLevel)) &&
            (identical(other.matchedWords, matchedWords) ||
                const DeepCollectionEquality()
                    .equals(other.matchedWords, matchedWords)) &&
            (identical(other.fullyHighlighted, fullyHighlighted) ||
                const DeepCollectionEquality()
                    .equals(other.fullyHighlighted, fullyHighlighted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(matchLevel) ^
      const DeepCollectionEquality().hash(matchedWords) ^
      const DeepCollectionEquality().hash(fullyHighlighted);

  @JsonKey(ignore: true)
  @override
  _$AlgoliaHighlightResultCopyWith<_AlgoliaHighlightResult> get copyWith =>
      __$AlgoliaHighlightResultCopyWithImpl<_AlgoliaHighlightResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlgoliaHighlightResultToJson(this);
  }
}

abstract class _AlgoliaHighlightResult implements AlgoliaHighlightResult {
  const factory _AlgoliaHighlightResult(
          {@JsonKey() required String value,
          @JsonKey() required AlgoliaHighlightMatchLevel matchLevel,
          @JsonKey(defaultValue: const <String>[]) List<String> matchedWords,
          @JsonKey(defaultValue: false) bool fullyHighlighted}) =
      _$_AlgoliaHighlightResult;

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
  @JsonKey(defaultValue: const <String>[])
  List<String> get matchedWords => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false)
  bool get fullyHighlighted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlgoliaHighlightResultCopyWith<_AlgoliaHighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}
