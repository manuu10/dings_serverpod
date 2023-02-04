/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class DokumentoTagConnection extends _i1.TableRow {
  DokumentoTagConnection({
    int? id,
    required this.tagId,
    required this.dokumentoId,
  }) : super(id);

  factory DokumentoTagConnection.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DokumentoTagConnection(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      tagId: serializationManager.deserialize<int>(jsonSerialization['tagId']),
      dokumentoId: serializationManager
          .deserialize<int>(jsonSerialization['dokumentoId']),
    );
  }

  static final t = DokumentoTagConnectionTable();

  int tagId;

  int dokumentoId;

  @override
  String get tableName => 'dokumento_tag_connection';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tagId': tagId,
      'dokumentoId': dokumentoId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'tagId': tagId,
      'dokumentoId': dokumentoId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'tagId': tagId,
      'dokumentoId': dokumentoId,
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
      case 'tagId':
        tagId = value;
        return;
      case 'dokumentoId':
        dokumentoId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<DokumentoTagConnection>> find(
    _i1.Session session, {
    DokumentoTagConnectionExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DokumentoTagConnection>(
      where: where != null ? where(DokumentoTagConnection.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DokumentoTagConnection?> findSingleRow(
    _i1.Session session, {
    DokumentoTagConnectionExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DokumentoTagConnection>(
      where: where != null ? where(DokumentoTagConnection.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DokumentoTagConnection?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<DokumentoTagConnection>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DokumentoTagConnectionExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DokumentoTagConnection>(
      where: where(DokumentoTagConnection.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    DokumentoTagConnection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    DokumentoTagConnection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    DokumentoTagConnection row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DokumentoTagConnectionExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DokumentoTagConnection>(
      where: where != null ? where(DokumentoTagConnection.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DokumentoTagConnectionExpressionBuilder = _i1.Expression Function(
    DokumentoTagConnectionTable);

class DokumentoTagConnectionTable extends _i1.Table {
  DokumentoTagConnectionTable() : super(tableName: 'dokumento_tag_connection');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final tagId = _i1.ColumnInt('tagId');

  final dokumentoId = _i1.ColumnInt('dokumentoId');

  @override
  List<_i1.Column> get columns => [
        id,
        tagId,
        dokumentoId,
      ];
}

@Deprecated('Use DokumentoTagConnectionTable.t instead.')
DokumentoTagConnectionTable tDokumentoTagConnection =
    DokumentoTagConnectionTable();
