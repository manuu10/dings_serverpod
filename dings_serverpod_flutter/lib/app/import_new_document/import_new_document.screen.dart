import 'dart:convert';

import 'package:dings_serverpod_client/dings_serverpod_client.dart';
import 'package:dings_serverpod_flutter/app/add_document_tag.widget.dart';
import 'package:dings_serverpod_flutter/app/import_new_document/import_new_document.state.dart';
import 'package:dings_serverpod_flutter/core/provider/dokumento_provider.dart';
import 'package:dings_serverpod_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../ui_core/angled_corner_button.dart';
import '../../ui_core/angled_filepicker.dart';
import '../../ui_core/angled_quill_editor.dart';
import '../../ui_core/angled_tag_input.dart';
import '../../ui_core/angled_text_field.dart';

class ImportNewDocumentScreen extends HookConsumerWidget {
  const ImportNewDocumentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newDocScreenProvider);
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(right: 20),
          children: [
            Text(
              "Import Document",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Divider(thickness: 3),
            AngledTextField(controller: state.titleController),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: AngledFilePicker(
                onFilesPicked: (d) {
                  ref.read(newDocScreenProvider.notifier).setFiles(d);
                },
              ),
            ),
            const SizedBox(height: 20),
            AngledTagInputProviderWrapper(
              available: dokumentoTagsProvider,
              selected: state.tags,
              onTap: (tag) {
                ref.read(newDocScreenProvider.notifier).toggleTag(tag);
              },
            ),
            const SizedBox(height: 10),
            Text(
              "Notes",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            AngledQuillEditor(controller: state.notesController),
            const SizedBox(height: 100),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: AngledCornerButton(
              icon: const Icon(FeatherIcons.upload),
              child: const Text("Submit"),
              onTap: () {
                client.dokumento.add(
                  Dokumento(
                    title: state.titleController.text,
                    notes: jsonEncode(
                        state.notesController.document.toDelta().toJson()),
                    filePaths: state.files.map((e) => e.path).toList(),
                    tags: state.tags,
                  ),
                );
                ref.refresh(dokumentoProvider);
              },
            ),
          ),
        ),
      ],
    );
  }
}
