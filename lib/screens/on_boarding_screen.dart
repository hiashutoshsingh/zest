import 'package:aurora/aurora.dart';
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
            flex: 7,
            child: Container(
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Aurora(
                  size: MediaQuery.of(context).size.width,
                  colors: [
                    // AppColor.lightGreen,
                    AppColor.teal,
                    AppColor.darkPink,
                    // AppColor.purple,
                    AppColor.lightPink,
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Sample Heading',
                        style: AppTextStyles.regularTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Sample Text for explaining the app with video playing in the top',
                        style: AppTextStyles.thinTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.teal,
                          borderRadius: BorderRadius.circular(4),
                          gradient: new LinearGradient(
                            colors: [
                              AppColor.lightGreen,
                              AppColor.teal,
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0) + EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'Explore Now',
                            style: AppTextStyles.regularTextStyle.copyWith(
                              color: AppColor.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
