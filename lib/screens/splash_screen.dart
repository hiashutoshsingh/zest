import 'package:flutter/material.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/screens/login_screen.dart';
import 'package:zest/screens/select_city_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/app_storage.dart';
import 'package:zest/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  static final String route = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeToScreen();
  }

  Future<void> _routeToScreen() async {
    String email = await AppStorage().readData(emailKey);
    String selectedCity = await AppStorage().readData(selectedCityKey);
    String route = LoginScreen.route;
    if (email != null && email.trim().isNotEmpty) {
      route = SelectCityScreen.route;
      if (selectedCity != null && selectedCity.trim().isNotEmpty) {
        route = HomeScreen.route;
      }
    }
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Container(
        child: Center(
          child: Text(
            'ZEST',
            style: AppTextStyles.thinTextStyle.copyWith(
              fontSize: 48,
            ),
          ),
        ),
      ),
    );
  }
}
