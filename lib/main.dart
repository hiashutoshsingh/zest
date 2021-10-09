import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zest/screens/home_screen.dart';

import 'data/provider/home_provider.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zest',
      theme: ThemeData(primarySwatch: Colors.red),
      routes: AppRoutes().appRoutes(),
      // initialRoute: LoginScreen.route,
      initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
