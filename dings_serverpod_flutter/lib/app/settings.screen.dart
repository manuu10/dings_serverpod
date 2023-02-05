import 'package:dings_serverpod_flutter/app/add_document_tag.widget.dart';
import 'package:dings_serverpod_flutter/core/provider/dokumento_provider.dart';
import 'package:dings_serverpod_flutter/ui_core/angled_container.dart';
import 'package:dings_serverpod_flutter/ui_core/angled_tag_input.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.only(right: 20),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AngledContainer(
            borderColor: Theme.of(context).primaryColor,
            borderBottom: true,
            borderTop: true,
            borderWidth: 2,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AngledTagViewProviderWrapper(tags: dokumentoTagsProvider),
                  const SizedBox(height: 20),
                  const AddDocumentTagWidget()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
