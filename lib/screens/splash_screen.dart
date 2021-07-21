import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  static final String route = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 2), () {
    //   Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false);
    // });
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
