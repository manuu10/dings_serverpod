import 'package:dings_serverpod_flutter/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dokumentoProvider = FutureProvider((ref) => client.dokumento.getAll());
final dokumentoTagsProvider =
    FutureProvider((ref) => client.dokumentoTag.getAll());
