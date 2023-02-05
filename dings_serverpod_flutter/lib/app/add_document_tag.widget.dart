import 'package:dings_serverpod_client/dings_serverpod_client.dart';
import 'package:dings_serverpod_flutter/core/provider/dokumento_provider.dart';
import 'package:dings_serverpod_flutter/main.dart';
import 'package:dings_serverpod_flutter/ui_core/angled_corner_button.dart';
import 'package:dings_serverpod_flutter/ui_core/angled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../ui_core/angled_color_picker.dart';

class AddDocumentTagWidget extends HookConsumerWidget {
  const AddDocumentTagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);
    final error = useState<String?>(null);
    final color = useState<Color?>(null);
    final title = useTextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AngledTextField(
          controller: title,
        ),
        const SizedBox(height: 20),
        AngledColorPicker(
          color: color.value,
          onChange: (c) => color.value = c,
        ),
        const SizedBox(height: 20),
        if (error.value != null)
          Text(
            error.value!,
            style: const TextStyle(color: Colors.red),
          ),
        if (error.value != null) const SizedBox(height: 10),
        Row(
          children: [
            AngledCornerButton(
              icon: loading.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    )
                  : const Icon(FeatherIcons.plus),
              onTap: loading.value
                  ? null
                  : () async {
                      if (title.text.isEmpty) {
                        error.value = "Please enter a title";
                        return;
                      }
                      if (color.value == null) {
                        error.value = "Please select a color";
                        return;
                      }
                      loading.value = true;
                      try {
                        await client.dokumentoTag.add(
                          DokumentoTag(
                            title: title.text,
                            colorR: color.value!.red,
                            colorG: color.value!.green,
                            colorB: color.value!.blue,
                          ),
                        );
                        ref.refresh(dokumentoTagsProvider);
                        title.clear();
                      } catch (e) {
                        error.value = "Couldn't add Tag";
                      }
                      loading.value = false;
                      error.value = null;
                    },
              child: const Text("Add Tag"),
            ),
            const SizedBox(width: 10),
            AngledCornerButton(
              primaryColor: Colors.grey,
              icon: const Icon(FeatherIcons.x),
              onTap: () {},
              child: const Text("Cancel"),
            ),
          ],
        )
      ],
    );
  }
}
