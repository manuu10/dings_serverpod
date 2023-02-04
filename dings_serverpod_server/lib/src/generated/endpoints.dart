/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/dokumento_endpoint.dart' as _i2;
import '../endpoints/dokumento_tag_endpoint.dart' as _i3;
import 'package:dings_serverpod_server/src/generated/dokumento.dart' as _i4;
import 'package:dings_serverpod_server/src/generated/dokumento_tag.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'dokumento': _i2.DokumentoEndpoint()
        ..initialize(
          server,
          'dokumento',
          null,
        ),
      'dokumentoTag': _i3.DokumentoTagEndpoint()
        ..initialize(
          server,
          'dokumentoTag',
          null,
        ),
    };
    connectors['dokumento'] = _i1.EndpointConnector(
      name: 'dokumento',
      endpoint: endpoints['dokumento']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dokumento'] as _i2.DokumentoEndpoint).getAll(session),
        ),
        'add': _i1.MethodConnector(
          name: 'add',
          params: {
            'doc': _i1.ParameterDescription(
              name: 'doc',
              type: _i1.getType<_i4.Dokumento>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dokumento'] as _i2.DokumentoEndpoint).add(
            session,
            params['doc'],
          ),
        ),
      },
    );
    connectors['dokumentoTag'] = _i1.EndpointConnector(
      name: 'dokumentoTag',
      endpoint: endpoints['dokumentoTag']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dokumentoTag'] as _i3.DokumentoTagEndpoint)
                  .getAll(session),
        ),
        'add': _i1.MethodConnector(
          name: 'add',
          params: {
            'tag': _i1.ParameterDescription(
              name: 'tag',
              type: _i1.getType<_i5.DokumentoTag>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dokumentoTag'] as _i3.DokumentoTagEndpoint).add(
            session,
            params['tag'],
          ),
        ),
      },
    );
  }
}
