import 'dart:developer' as developer;

import 'package:algolia/algolia.dart';
import 'package:algolia_model/src/util/debounce.dart';
import 'package:flutter/material.dart';

/// [AlgoliaQuery] builder from the search string.
typedef AlgoliaSearchQueryBuilder = AlgoliaQuery Function(String query);

/// [AlgoliaObjectSnapshot] transform callback to its relevant model.
typedef AlgoliaBuilderTransformCallback<T> = Future<T> Function(AlgoliaObjectSnapshot snapshot);

/// [AlgoliaBuilder] child builder.
typedef AlgoliaBuilderChildBuilder<T> = Widget Function(
  BuildContext context,
  List<T> results,
  VoidCallback? paginator,
  AlgoliaQuerySnapshot? query,
  String? identifier,
);

/// Builder of lists of [AlgoliaQuery]s.
class AlgoliaBuilder<T> extends StatefulWidget {
  /// Constructs [AlgoliaBuilder].
  const AlgoliaBuilder({
    Key? key,
    required this.builder,
    required this.queryBuilder,
    required this.transform,
    this.dispose,
    this.query = '',
    this.filter = '',
    this.searchFocusNode,
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
  final FocusNode? searchFocusNode;

  /// Amount of items to paginate.
  final int itemsPerPage;

  /// [Duration] to wait before fetching new query, when the search string changes.
  final Duration debounceDelay;

  /// Child [Widget] builder.
  final AlgoliaBuilderChildBuilder<T> builder;

  /// [AlgoliaObjectSnapshot] transform callback to its relevant [FirestoreModel].
  ///
  /// These models get disposed, so they can be reference counted as well.
  final AlgoliaBuilderTransformCallback<T> transform;

  /// Dispose callback of the transformed models.
  final ValueChanged<T>? dispose;

  @override
  _AlgoliaBuilderState<T> createState() => _AlgoliaBuilderState<T>();
}

class _AlgoliaBuilderState<T> extends State<AlgoliaBuilder<T>> {
  bool _paginating = false;
  String _lastFilter = '';
  AlgoliaQuerySnapshot? _query;
  List<T> __results = <T>[];
  List<T> get _results => __results;
  set _results(List<T> setter) {
    if (setter != __results) {
      developer.log('Disposing ${__results.length} old results', name: 'algolia_model');
      if (widget.dispose != null) __results.forEach(widget.dispose!);
    }

    __results = setter;
    setState(() {});
  }

  Future _paginate(int page) async {
    assert(widget.searchFocusNode == null || widget.searchFocusNode!.hasFocus);

    try {
      if (_query == null || _paginating || _query!.page > page || _query!.nbPages <= page) {
        developer.log('Dropping redundant pagination request', name: 'algolia_model');
        return;
      }

      _paginating = true;
      developer.log('Paginating ${_query!.query} to page $page/${_query!.nbPages}', name: 'algolia_model');

      AlgoliaQuery query = widget.queryBuilder(_query!.query);
      if (widget.filter.isNotEmpty) query = query.filters(widget.filter);
      query = query.setHitsPerPage(_query!.hitsPerPage).setPage(page);

      final snapshot = await query.getObjects();
      final items = await Future.wait(snapshot.hits.map(widget.transform));

      // NOTE: Query might be null by now.
      if (mounted && snapshot.query == _query?.query) {
        setState(() {
          _query = snapshot;
          _results.addAll(items);
        });

        developer.log(
          '"${snapshot.query}" paginated ${_results.length}/${snapshot.nbHits} results',
          name: 'algolia_model',
        );
      } else {
        // Unmounted / Old query - items not needed anymore, dispose.
        if (widget.dispose != null) items.forEach(widget.dispose!);
      }
    } finally {
      _paginating = false;
    }
  }

  Future _getResults() async {
    if (_query?.query == widget.query && _lastFilter == widget.filter) {
      return; // Debounce redundant.
    } else if (widget.query.trim().isEmpty && widget.filter.isEmpty) {
      return; // Debounce too late.
    } else if (!(widget.searchFocusNode?.hasFocus ?? true)) {
      return; // Results too late.
    }

    _lastFilter = widget.filter;
    List<T>? results;
    AlgoliaQuerySnapshot? querySnapshot;

    try {
      AlgoliaQuery query = widget.queryBuilder(widget.query);
      if (widget.filter.isNotEmpty) query = query.filters(widget.filter);
      query = query.setHitsPerPage(widget.itemsPerPage);

      querySnapshot = await query.getObjects();

      developer.log(
        '"${widget.query}" got ${querySnapshot.hits.length}/'
        '${querySnapshot.nbHits} results in ${querySnapshot.processingTimeMS} ms',
        name: 'algolia_model',
      );

      results = await Future.wait(querySnapshot.hits.map(widget.transform));
    } finally {
      if (mounted && (widget.searchFocusNode?.hasFocus ?? true)) {
        // NOTE: Make sure `_results` are growable.
        _query = querySnapshot;
        _results = results?.toList(growable: true) ?? <T>[];
      } else {
        // Not mounted anymore, dispose the just arrived results.
        if (widget.dispose != null) results?.forEach(widget.dispose!);
      }
    }
  }

  void _handleChange() {
    if (widget.searchFocusNode?.hasFocus ?? true) {
      if (widget.query.trim().isNotEmpty || widget.filter.isNotEmpty) {
        Debounce.milliseconds(widget.debounceDelay.inMilliseconds, _getResults);
      } else {
        // Value empty, clear results and return
        _query = null;
        _results = <T>[];
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _handleChange();
  }

  @override
  void dispose() {
    if (widget.dispose != null) _results.forEach(widget.dispose!);
    super.dispose();
  }

  @override
  void didUpdateWidget(AlgoliaBuilder<T> oldWidget) {
    if (oldWidget.query != widget.query) _handleChange();
    if (oldWidget.filter != widget.filter && widget.query.isNotEmpty) {
      _handleChange();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _requestNextPage() {
    if (_query != null) _paginate(_query!.page + 1);
  }

  @override
  Widget build(BuildContext context) => widget.builder(
        context,
        _results,
        _query != null ? _requestNextPage : null,
        _query,
        _query != null ? _query!.query + _lastFilter : null,
      );
}
