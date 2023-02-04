import 'package:dings_serverpod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DokumentoTagEndpoint extends Endpoint {
  Future<List<DokumentoTag>> getAll(Session session) {
    return DokumentoTag.find(session);
  }

  Future<void> add(Session session, DokumentoTag tag) {
    return DokumentoTag.insert(session, tag);
  }
}
