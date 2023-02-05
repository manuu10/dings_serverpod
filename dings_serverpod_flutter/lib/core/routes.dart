import '../app/home.screen.dart';
import '../app/import_new_document/import_new_document.screen.dart';
import '../app/overview.screen.dart';
import '../app/settings.screen.dart';
import '../ui_core/angled_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const rMain = "/main";
  static const rImportDoc = "/importDoc";
  static const rSettings = "/settings";

  static final rootKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: rootKey,
    initialLocation: rMain,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return HomeScreen(body: child);
        },
        routes: [
          GoRoute(
            path: rMain,
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: const OverviewScreen()),
          ),
          GoRoute(
            path: rImportDoc,
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: const ImportNewDocumentScreen()),
          ),
          GoRoute(
            path: rSettings,
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: const SettingsScreen()),
          )
        ],
      ),
    ],
  );

  static CustomTransitionPage buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.linear)),
        ),
        child: AngledContainer(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: child,
        ),
      ),
    );
  }
}
