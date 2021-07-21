import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zest',
      theme: ThemeData(primarySwatch: Colors.red),
      routes: AppRoutes().appRoutes(),
      initialRoute: SplashScreen.route,
      // initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
