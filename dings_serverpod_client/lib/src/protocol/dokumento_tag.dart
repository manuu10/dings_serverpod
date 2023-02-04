/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class DokumentoTag extends _i1.SerializableEntity {
  DokumentoTag({
    this.id,
    required this.title,
    required this.colorR,
    required this.colorG,
    required this.colorB,
  });

  factory DokumentoTag.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DokumentoTag(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      colorR:
          serializationManager.deserialize<int>(jsonSerialization['colorR']),
      colorG:
          serializationManager.deserialize<int>(jsonSerialization['colorG']),
      colorB:
          serializationManager.deserialize<int>(jsonSerialization['colorB']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  int colorR;

  int colorG;

  int colorB;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'colorR': colorR,
      'colorG': colorG,
      'colorB': colorB,
    };
  }
}
