/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Dokumento extends _i1.TableRow {
  Dokumento({
    int? id,
    required this.title,
    required this.notes,
    this.tags,
    required this.filePaths,
  }) : super(id);

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

  static final t = DokumentoTable();

  String title;

  String notes;

  List<_i2.DokumentoTag>? tags;

  List<String> filePaths;

  @override
  String get tableName => 'dokumento';
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

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'notes': notes,
      'filePaths': filePaths,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'notes': notes,
      'tags': tags,
      'filePaths': filePaths,
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
      case 'notes':
        notes = value;
        return;
      case 'filePaths':
        filePaths = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Dokumento>> find(
    _i1.Session session, {
    DokumentoExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Dokumento>(
      where: where != null ? where(Dokumento.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Dokumento?> findSingleRow(
    _i1.Session session, {
    DokumentoExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Dokumento>(
      where: where != null ? where(Dokumento.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Dokumento?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Dokumento>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DokumentoExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Dokumento>(
      where: where(Dokumento.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Dokumento row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Dokumento row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Dokumento row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DokumentoExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Dokumento>(
      where: where != null ? where(Dokumento.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DokumentoExpressionBuilder = _i1.Expression Function(DokumentoTable);

class DokumentoTable extends _i1.Table {
  DokumentoTable() : super(tableName: 'dokumento');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final notes = _i1.ColumnString('notes');

  final filePaths = _i1.ColumnSerializable('filePaths');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        notes,
        filePaths,
      ];
}

@Deprecated('Use DokumentoTable.t instead.')
DokumentoTable tDokumento = DokumentoTable();
