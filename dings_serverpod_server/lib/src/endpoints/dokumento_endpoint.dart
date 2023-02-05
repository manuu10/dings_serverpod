import 'package:dings_serverpod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DokumentoEndpoint extends Endpoint {
  Future<List<Dokumento>> getAll(Session session) async {
    final docs = await Dokumento.find(session);
    for (var doc in docs) {
      final conTbl = DokumentoTagConnection.t;
      final tagTbl = DokumentoTag.t;
      final tags = (await session.db.query("""
        SELECT ${tagTbl.tableName}.*
        FROM ${tagTbl.tableName},${conTbl.tableName}
        WHERE ${tagTbl.tableName}."${tagTbl.id.columnName}" = ${conTbl.tableName}."${conTbl.tagId.columnName}" AND
        ${conTbl.tableName}."${conTbl.dokumentoId.columnName}" = ${doc.id}
      """))
          .map((e) => DokumentoTag(
                id: e[0],
                title: e[1],
                colorR: e[2],
                colorG: e[3],
                colorB: e[4],
              ))
          .toList();
      doc.tags = tags;
    }
    return docs;
  }

  Future<void> add(Session session, Dokumento doc) async {
    final res = await session.db.transaction((transaction) async {
      await Dokumento.insert(session, doc);
      for (var element in doc.tags ?? []) {
        await DokumentoTagConnection.insert(
          session,
          DokumentoTagConnection(tagId: element.id, dokumentoId: doc.id!),
        );
      }
    });
    return;
  }
}
