/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dokumento.dart' as _i2;
import 'dokumento_tag.dart' as _i3;
import 'dokumento_tag_nm.dart' as _i4;
import 'protocol.dart' as _i5;
import 'package:dings_serverpod_client/src/protocol/dokumento.dart' as _i6;
import 'package:dings_serverpod_client/src/protocol/dokumento_tag.dart' as _i7;
export 'dokumento.dart';
export 'dokumento_tag.dart';
export 'dokumento_tag_nm.dart';
export 'client.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Dokumento) {
      return _i2.Dokumento.fromJson(data, this) as T;
    }
    if (t == _i3.DokumentoTag) {
      return _i3.DokumentoTag.fromJson(data, this) as T;
    }
    if (t == _i4.DokumentoTagConnection) {
      return _i4.DokumentoTagConnection.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Dokumento?>()) {
      return (data != null ? _i2.Dokumento.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.DokumentoTag?>()) {
      return (data != null ? _i3.DokumentoTag.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.DokumentoTagConnection?>()) {
      return (data != null
          ? _i4.DokumentoTagConnection.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<List<_i5.DokumentoTag>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i5.DokumentoTag>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Dokumento>) {
      return (data as List).map((e) => deserialize<_i6.Dokumento>(e)).toList()
          as dynamic;
    }
    if (t == List<_i7.DokumentoTag>) {
      return (data as List)
          .map((e) => deserialize<_i7.DokumentoTag>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Dokumento) {
      return 'Dokumento';
    }
    if (data is _i3.DokumentoTag) {
      return 'DokumentoTag';
    }
    if (data is _i4.DokumentoTagConnection) {
      return 'DokumentoTagConnection';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Dokumento') {
      return deserialize<_i2.Dokumento>(data['data']);
    }
    if (data['className'] == 'DokumentoTag') {
      return deserialize<_i3.DokumentoTag>(data['data']);
    }
    if (data['className'] == 'DokumentoTagConnection') {
      return deserialize<_i4.DokumentoTagConnection>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
