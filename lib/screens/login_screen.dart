import 'package:flutter/material.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/app_storage.dart';
import 'package:zest/utils/common.dart';
import 'package:zest/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  static final String route = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoggingIn;

  @override
  void initState() {
    super.initState();
    _isLoggingIn = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ZEST',
                style: AppTextStyles.regularTextStyle.copyWith(
                  fontSize: 48,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Know what to do, Where to do',
                textAlign: TextAlign.center,
                style: AppTextStyles.regularTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              _isLoggingIn
                  ? CircularProgressIndicator()
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Common.signInWithGoogle(
                              (val, userCredential) async {
                                _isLoggingIn = val;
                                if (userCredential != null) {
                                  await AppStorage().writeData(emailKey, userCredential.user.email.trim());
                                  await AppStorage().writeData(nameKey, userCredential.user.displayName.trim());
                                  Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false);
                                }
                                setState(() {});
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: AppColor.white,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'asset/google.png',
                                      height: 32,
                                      width: 32,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'Login via Google',
                                      style: AppTextStyles.regularTextStyle.copyWith(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, HomeScreen.route),
                          child: Text(
                            'Not Now',
                            style: AppTextStyles.regularTextStyle.copyWith(
                              color: AppColor.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
