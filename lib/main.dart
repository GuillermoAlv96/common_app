import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/src/managers/route_manager.dart';
import 'package:login/src/models/app/user.dart';
import 'package:login/src/providers/routing_provider.dart';
import 'package:login/src/services/auth.dart';
import 'package:provider/provider.dart';

import 'src/config/themes/dark_theme.dart';
import 'src/config/themes/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final _routingProvider = RoutingProvider();
  final _routeManager = RouteManager(_routingProvider);

  runApp(MyApp(
    routeManager: _routeManager,
  ));
}

class MyApp extends StatelessWidget {
  final RouteManager routeManager;

  MyApp({required this.routeManager});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyAppUser>.value(
      initialData: MyAppUser(uid: '000000'),
      value: AuthService().user,
      child: MaterialApp(
        title: 'BarberShop',
        themeMode: ThemeMode.system,
        theme: LightTheme.theme,
        darkTheme: DarkTheme.theme,
        initialRoute: RouteType.wrapper.name,
        onGenerateRoute: (settings) {
          final args = settings.arguments;
          for (RouteType value in RouteType.values) {
            if (value.name == settings.name) {
              return routeManager.createRoute(args);
            }
          }
        },
      ),
    );
  }
}
