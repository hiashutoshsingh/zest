import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class OnBoardingScreen extends StatefulWidget {
  static final String route = 'on_boarding_screen';

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'ZEST',
                    style: AppTextStyles.thinTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'ZEST',
                    style: AppTextStyles.thinTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
