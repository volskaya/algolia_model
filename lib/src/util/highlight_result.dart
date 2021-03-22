import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_result.freezed.dart';
part 'highlight_result.g.dart';

/// Enum of Algolia highlight match levels.
enum AlgoliaHighlightMatchLevel {
  /// No match.
  @JsonValue('none')
  none,

  /// Partial match.
  @JsonValue('partial')
  partial,

  /// Full match.
  @JsonValue('full')
  full
}

/// Highlight info from Algolia.
/// https://www.algolia.com/doc/api-reference/api-parameters/attributesToHighlight/
@freezed
class AlgoliaHighlightResult with _$AlgoliaHighlightResult {
  /// Constructs [AlgoliaHighlightResult].
  const factory AlgoliaHighlightResult({
    @JsonKey() required String value,
    @JsonKey() required AlgoliaHighlightMatchLevel matchLevel,
    @JsonKey(defaultValue: <String>[]) @Default(<String>[]) List<String> matchedWords,
    @JsonKey(defaultValue: false) @Default(false) bool fullyHighlighted,
  }) = _AlgoliaHighlightResult;

  /// Deserialize [AlgoliaHighlightResult] from json.
  factory AlgoliaHighlightResult.fromJson(Map<String, dynamic> json) => _$AlgoliaHighlightResultFromJson(json);
}
