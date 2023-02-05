import 'package:dings_serverpod_client/dings_serverpod_client.dart';
import 'package:dings_serverpod_flutter/core/provider/dokumento_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../ui_core/angled_corner_button.dart';
import '../ui_core/angled_tag_input.dart';

class OverviewScreen extends HookConsumerWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doks = ref.watch(dokumentoProvider);
    return doks.when(
      data: (data) {
        return ListView(
          padding: const EdgeInsets.only(right: 20),
          children: [
            Row(
              children: [
                Text(
                  "Home",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                AngledCornerButton(
                  child: const Text("Refresh"),
                  onTap: () => ref.refresh(dokumentoProvider),
                )
              ],
            ),
            const Divider(thickness: 3),
            for (final d in data) DocDingsTile(d)
          ],
        );
      },
      error: (e, s) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AngledCornerButton(
              child: const Text("Refresh"),
              onTap: () => ref.refresh(dokumentoProvider),
            ),
          ),
        ],
      ),
      loading: () => Column(
        children: const [
          LinearProgressIndicator(),
          SizedBox(height: 20),
          Text("loading dokuemntos"),
        ],
      ),
    );
  }
}

class DocDingsTile extends HookWidget {
  const DocDingsTile(this.doc, {Key? key}) : super(key: key);
  final Dokumento doc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: AngledCornerButton(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            AngledTagView(tags: doc.tags ?? const []),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FeatherIcons.file,
                  size: 18,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 10),
                Text("${doc.filePaths.length} Files")
              ],
            )
          ],
        ),
      ),
    );
  }
}
