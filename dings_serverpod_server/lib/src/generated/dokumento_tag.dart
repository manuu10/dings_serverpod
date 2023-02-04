/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class DokumentoTag extends _i1.TableRow {
  DokumentoTag({
    int? id,
    required this.title,
    required this.colorR,
    required this.colorG,
    required this.colorB,
  }) : super(id);

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

  static final t = DokumentoTagTable();

  String title;

  int colorR;

  int colorG;

  int colorB;

  @override
  String get tableName => 'dokumento_tag';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'colorR': colorR,
      'colorG': colorG,
      'colorB': colorB,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'colorR': colorR,
      'colorG': colorG,
      'colorB': colorB,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'colorR':
        colorR = value;
        return;
      case 'colorG':
        colorG = value;
        return;
      case 'colorB':
        colorB = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<DokumentoTag>> find(
    _i1.Session session, {
    DokumentoTagExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DokumentoTag>(
      where: where != null ? where(DokumentoTag.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DokumentoTag?> findSingleRow(
    _i1.Session session, {
    DokumentoTagExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DokumentoTag>(
      where: where != null ? where(DokumentoTag.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DokumentoTag?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<DokumentoTag>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DokumentoTagExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DokumentoTag>(
      where: where(DokumentoTag.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    DokumentoTag row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    DokumentoTag row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    DokumentoTag row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DokumentoTagExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DokumentoTag>(
      where: where != null ? where(DokumentoTag.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DokumentoTagExpressionBuilder = _i1.Expression Function(
    DokumentoTagTable);

class DokumentoTagTable extends _i1.Table {
  DokumentoTagTable() : super(tableName: 'dokumento_tag');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final colorR = _i1.ColumnInt('colorR');

  final colorG = _i1.ColumnInt('colorG');

  final colorB = _i1.ColumnInt('colorB');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        colorR,
        colorG,
        colorB,
      ];
}

@Deprecated('Use DokumentoTagTable.t instead.')
DokumentoTagTable tDokumentoTag = DokumentoTagTable();
