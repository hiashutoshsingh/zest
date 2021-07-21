import 'package:flutter/material.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/screens/on_boarding_screen.dart';
import 'package:zest/screens/splash_screen.dart';

class AppRoutes {
  static final _appRoutes = <String, WidgetBuilder>{
    HomeScreen.route: (BuildContext context) => HomeScreen(),
    SplashScreen.route: (BuildContext context) => SplashScreen(),
    OnBoardingScreen.route: (BuildContext context) => OnBoardingScreen(),
  };

  Map<String, WidgetBuilder> appRoutes() {
    return _appRoutes;
  }
}
