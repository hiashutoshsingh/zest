import 'package:flutter/material.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/theme/app_theme.dart';

class LoginScreen extends StatefulWidget {
  static final String route = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.login,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Expense Manager',
                  style: AppTextStyles.regularTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Icon(
                  Icons.login,
                  size: 46,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Track your Expenses and save money',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regularTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.lightBlack,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            size: 24,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Login via Google',
                            style: AppTextStyles.regularTextStyle.copyWith(
                              color: AppColor.lightOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Not Now',
                  style: AppTextStyles.regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
