import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  static final String route = 'login_screen';

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
              Padding(
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
              SizedBox(
                height: 24,
              ),
              Text(
                'Not Now',
                style: AppTextStyles.regularTextStyle.copyWith(
                  color: AppColor.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
