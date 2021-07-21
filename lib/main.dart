import 'package:flutter/material.dart';
import 'package:zest/screens/on_boarding_screen.dart';

import 'routes/app_routes.dart';

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
      initialRoute: OnBoardingScreen.route,
      // initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
