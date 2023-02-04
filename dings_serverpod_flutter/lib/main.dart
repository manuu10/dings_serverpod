import 'package:dings_serverpod_client/dings_serverpod_client.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'core/routes.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Dokumentos',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 115, 66, 248),
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.chakraPetchTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
