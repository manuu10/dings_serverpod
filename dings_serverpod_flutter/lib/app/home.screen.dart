import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:go_router/go_router.dart';

import '../core/routes.dart';
import '../ui_core/angled_corner_button.dart';
import '../ui_core/sidemenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.body}) : super(key: key);
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    const slim = true;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            slim: slim,
            footer: AngledCornerButton(
              primaryColor: Colors.grey,
              disableBackground: router.location != AppRouter.rSettings,
              icon: const Icon(FeatherIcons.settings),
              child: slim ? null : const Text("Settings"),
              onTap: () => context.go(AppRouter.rSettings),
            ),
            children: [
              AngledCornerButton(
                primaryColor: Colors.green,
                disableBackground: router.location != AppRouter.rImportDoc,
                icon: const Icon(FeatherIcons.plus),
                connectTop: true,
                onTap: () => context.go(AppRouter.rImportDoc),
                child: slim ? null : const Text("Import new Document"),
              ),
              const SizedBox(height: 10),
              AngledCornerButton(
                primaryColor: Colors.grey,
                disableBackground: router.location != AppRouter.rMain,
                icon: const Icon(FeatherIcons.home),
                child: slim ? null : const Text("Home"),
                onTap: () => context.go(AppRouter.rMain),
              ),
            ],
          ),
          SizedBox(width: 10),
          Expanded(
            child: body ?? const SizedBox(),
          ),
        ],
      ),
    );
  }
}
