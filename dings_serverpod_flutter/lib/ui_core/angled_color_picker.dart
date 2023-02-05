// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dings_serverpod_flutter/ui_core/angled_corner_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AngledColorPicker extends HookWidget {
  const AngledColorPicker({
    this.color,
    this.colors = Colors.accents,
    required this.onChange,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final List<Color> colors;
  final void Function(Color color) onChange;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 10,
      children: colors.map(
        (e) {
          final constrastColor =
              e.computeLuminance() > 0.4 ? Colors.black : Colors.white;
          return AngledCornerButton(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            onTap: () => onChange(e),
            backgroundColor: e,
            backgroundHoverColor: e.withOpacity(0.5),
            borderHoverColor: e,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              opacity: e == color ? 1 : 0,
              child: Icon(
                FeatherIcons.check,
                color: constrastColor,
                size: 24,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
