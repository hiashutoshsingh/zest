import 'package:flutter/material.dart';
import 'package:zest/screens/activity_screen.dart';
import 'package:zest/screens/category_listing_screen.dart';
import 'package:zest/screens/feedback_bug_screen.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/screens/login_screen.dart';
import 'package:zest/screens/on_boarding_screen.dart';
import 'package:zest/screens/profile_screen.dart';
import 'package:zest/screens/saved_activities_screen.dart';
import 'package:zest/screens/search_screen.dart';
import 'package:zest/screens/select_city_screen.dart';
import 'package:zest/screens/splash_screen.dart';

class AppRoutes {
  static final _appRoutes = <String, WidgetBuilder>{
    HomeScreen.route: (BuildContext context) => HomeScreen(),
    SplashScreen.route: (BuildContext context) => SplashScreen(),
    OnBoardingScreen.route: (BuildContext context) => OnBoardingScreen(),
    ActivityScreen.route: (BuildContext context) => ActivityScreen(),
    CategoryListingScreen.route: (BuildContext context) => CategoryListingScreen(),
    SearchScreen.route: (BuildContext context) => SearchScreen(),
    ProfileScreen.route: (BuildContext context) => ProfileScreen(),
    SavedActivitiesScreen.route: (BuildContext context) => SavedActivitiesScreen(),
    FeedbackBugScreen.route: (BuildContext context) => FeedbackBugScreen(),
    LoginScreen.route: (BuildContext context) => LoginScreen(),
    SelectCityScreen.route: (BuildContext context) => SelectCityScreen(),
  };

  Map<String, WidgetBuilder> appRoutes() {
    return _appRoutes;
  }
}
