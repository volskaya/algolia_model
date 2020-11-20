// ignore_for_file:avoid_classes_with_only_static_members

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_model/firestore_model.dart';

/// Callback to convert algolia -> firestore reference.
typedef AlgoliaModelReferenceBuilder = DocumentReference Function<D>(AlgoliaObjectReference reference);

/// Return a map where field `_tags` is moved to field `tags`.
Map<String, dynamic> _withUnderscoreTags(Map<String, dynamic> map) {
  if (map.containsKey('_tags')) {
    map['tags'] = map['_tags'];
    map.remove('_tags');
  }
  return map;
}

/// [AlgoliaModel] provides helper methods to work with algolia snapshots.
class AlgoliaModel {
  /// Callback to convert algolia -> firestore reference.
  static AlgoliaModelReferenceBuilder referenceBuilder;

  /// Get a referenced model from the [snapshot]'s id or use this snapshot to
  /// build the new model.
  static Future<D> fromSnapshot<D extends FirestoreModel<D>>(AlgoliaObjectSnapshot snapshot) {
    assert(referenceBuilder != null, '[AlgoliaModel.referenceBuilder] must be defined');

    final data = _withUnderscoreTags(snapshot.data);
    final reference = referenceBuilder<D>(snapshot.ref);

    return FirestoreModel.referenceWithBuilder(
      reference,
      () => FirebaseModel.build<D>(FirebaseModelType.firestore, reference.path, data),
    );
  }
}
