// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

import 'package:dings_serverpod_client/dings_serverpod_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newDocScreenProvider =
    StateNotifierProvider<ImportNewDocumentNotifier, ImportNewDocumentState>(
        (ref) => ImportNewDocumentNotifier(ImportNewDocumentState.empty()));

class ImportNewDocumentNotifier extends StateNotifier<ImportNewDocumentState> {
  ImportNewDocumentNotifier(super.state);

  void setFiles(List<File> files) {
    state = state.copyWith(files: files);
  }

  void toggleTag(DokumentoTag tag) {
    if (state.tags.any((element) => element.id == tag.id)) {
      state = state.copyWith(
        tags: state.tags.where((element) => element.id != tag.id).toList(),
      );
      return;
    }

    state = state.copyWith(tags: [...state.tags, tag]);
  }
}

class ImportNewDocumentState {
  final List<File> files;
  final List<DokumentoTag> tags;
  final TextEditingController titleController;
  final QuillController notesController;
  ImportNewDocumentState({
    required this.files,
    required this.tags,
    required this.titleController,
    required this.notesController,
  });

  factory ImportNewDocumentState.empty() {
    return ImportNewDocumentState(
      files: const [],
      tags: const [],
      titleController: TextEditingController(),
      notesController: QuillController.basic(),
    );
  }

  ImportNewDocumentState copyWith({
    List<File>? files,
    List<DokumentoTag>? tags,
    TextEditingController? titleController,
    QuillController? notesController,
  }) {
    return ImportNewDocumentState(
      files: files ?? this.files,
      tags: tags ?? this.tags,
      titleController: titleController ?? this.titleController,
      notesController: notesController ?? this.notesController,
    );
  }
}
