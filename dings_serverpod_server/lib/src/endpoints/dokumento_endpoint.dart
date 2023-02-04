import 'package:dings_serverpod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DokumentoEndpoint extends Endpoint {
  Future<List<Dokumento>> getAll(Session session) {
    return Dokumento.find(session);
  }

  Future<void> add(Session session, Dokumento doc) {
    return Dokumento.insert(session, doc);
  }
}
