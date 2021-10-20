import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zest/screens/home_screen.dart';

import 'data/provider/city_provider.dart';
import 'data/provider/home_provider.dart';
import 'routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => CityProvider()),
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
      initialRoute: HomeScreen.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
