import 'package:algolia_model/src/algolia_builder.dart';
import 'package:algolia_model/src/algolia_model.dart';
import 'package:firestore_model/firestore_model.dart';
import 'package:flutter/material.dart';

/// Wrapper around [AlgoliaBuilder] which handles transform and dispose depending on the type.
class AlgoliaModelBuilder<T extends FirestoreModel<T>> extends StatelessWidget {
  /// Constructs [AlgoliaModelBuilder].
  const AlgoliaModelBuilder({
    Key key,
    @required this.queryBuilder,
    this.query = '',
    this.filter = '',
    this.searchFocusNode,
    this.builder,
    this.itemsPerPage = 20,
    this.debounceDelay = const Duration(milliseconds: 250),
  }) : super(key: key);

  /// [AlgoliaQuery] builder for the search string.
  final AlgoliaSearchQueryBuilder queryBuilder;

  /// The search string that's gonna be passed to the [AlgoliaSearchQueryBuilder].
  final String query;

  /// Filter string.
  final String filter;

  /// [FocusNode] of the search text field.
  final FocusNode searchFocusNode;

  /// Amount of items to paginate.
  final int itemsPerPage;

  /// [Duration] to wait before fetching new query, when the search string changes.
  final Duration debounceDelay;

  /// Child [Widget] builder.
  final AlgoliaBuilderChildBuilder<T> builder;

  @override
  Widget build(BuildContext context) => AlgoliaBuilder<T>(
        transform: (s) => AlgoliaModel.fromSnapshot<T>(s),
        dispose: (m) => m.dispose(),
        queryBuilder: queryBuilder,
        query: query,
        searchFocusNode: searchFocusNode,
        itemsPerPage: itemsPerPage,
        debounceDelay: debounceDelay,
        builder: builder,
      );
}
