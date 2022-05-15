// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlgoliaHighlightResult _$$_AlgoliaHighlightResultFromJson(Map json) =>
    _$_AlgoliaHighlightResult(
      value: json['value'] as String,
      matchLevel:
          $enumDecode(_$AlgoliaHighlightMatchLevelEnumMap, json['matchLevel']),
      matchedWords: (json['matchedWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      fullyHighlighted: json['fullyHighlighted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AlgoliaHighlightResultToJson(
        _$_AlgoliaHighlightResult instance) =>
    <String, dynamic>{
      'value': instance.value,
      'matchLevel': _$AlgoliaHighlightMatchLevelEnumMap[instance.matchLevel],
      'matchedWords': instance.matchedWords,
      'fullyHighlighted': instance.fullyHighlighted,
    };

const _$AlgoliaHighlightMatchLevelEnumMap = {
  AlgoliaHighlightMatchLevel.none: 'none',
  AlgoliaHighlightMatchLevel.partial: 'partial',
  AlgoliaHighlightMatchLevel.full: 'full',
};
