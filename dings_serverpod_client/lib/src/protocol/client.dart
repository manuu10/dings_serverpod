/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:dings_serverpod_client/src/protocol/dokumento.dart' as _i3;
import 'package:dings_serverpod_client/src/protocol/dokumento_tag.dart' as _i4;
import 'dart:io' as _i5;
import 'protocol.dart' as _i6;

class _EndpointDokumento extends _i1.EndpointRef {
  _EndpointDokumento(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dokumento';

  _i2.Future<List<_i3.Dokumento>> getAll() =>
      caller.callServerEndpoint<List<_i3.Dokumento>>(
        'dokumento',
        'getAll',
        {},
      );

  _i2.Future<void> add(_i3.Dokumento doc) => caller.callServerEndpoint<void>(
        'dokumento',
        'add',
        {'doc': doc},
      );
}

class _EndpointDokumentoTag extends _i1.EndpointRef {
  _EndpointDokumentoTag(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dokumentoTag';

  _i2.Future<List<_i4.DokumentoTag>> getAll() =>
      caller.callServerEndpoint<List<_i4.DokumentoTag>>(
        'dokumentoTag',
        'getAll',
        {},
      );

  _i2.Future<void> add(_i4.DokumentoTag tag) => caller.callServerEndpoint<void>(
        'dokumentoTag',
        'add',
        {'tag': tag},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i5.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i6.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    dokumento = _EndpointDokumento(this);
    dokumentoTag = _EndpointDokumentoTag(this);
  }

  late final _EndpointDokumento dokumento;

  late final _EndpointDokumentoTag dokumentoTag;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'dokumento': dokumento,
        'dokumentoTag': dokumentoTag,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
