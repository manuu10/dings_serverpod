/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Dokumento extends _i1.SerializableEntity {
  Dokumento({
    this.id,
    required this.title,
    required this.notes,
    this.tags,
    required this.filePaths,
  });

  factory Dokumento.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Dokumento(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      notes:
          serializationManager.deserialize<String>(jsonSerialization['notes']),
      tags: serializationManager
          .deserialize<List<_i2.DokumentoTag>?>(jsonSerialization['tags']),
      filePaths: serializationManager
          .deserialize<List<String>>(jsonSerialization['filePaths']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String notes;

  List<_i2.DokumentoTag>? tags;

  List<String> filePaths;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'notes': notes,
      'tags': tags,
      'filePaths': filePaths,
    };
  }
}
