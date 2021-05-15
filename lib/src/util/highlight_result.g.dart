// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlgoliaHighlightResult _$_$_AlgoliaHighlightResultFromJson(Map json) {
  return _$_AlgoliaHighlightResult(
    value: json['value'] as String,
    matchLevel:
        _$enumDecode(_$AlgoliaHighlightMatchLevelEnumMap, json['matchLevel']),
    matchedWords: (json['matchedWords'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    fullyHighlighted: json['fullyHighlighted'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_AlgoliaHighlightResultToJson(
        _$_AlgoliaHighlightResult instance) =>
    <String, dynamic>{
      'value': instance.value,
      'matchLevel': _$AlgoliaHighlightMatchLevelEnumMap[instance.matchLevel],
      'matchedWords': instance.matchedWords,
      'fullyHighlighted': instance.fullyHighlighted,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AlgoliaHighlightMatchLevelEnumMap = {
  AlgoliaHighlightMatchLevel.none: 'none',
  AlgoliaHighlightMatchLevel.partial: 'partial',
  AlgoliaHighlightMatchLevel.full: 'full',
};
