import 'package:flutter/material.dart';
import 'package:zest/data/args/feedback_bug_arg.dart';
import 'package:zest/screens/feedback_bug_screen.dart';
import 'package:zest/screens/login_screen.dart';
import 'package:zest/screens/saved_activities_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/app_storage.dart';

class ProfileScreen extends StatelessWidget {
  static final String route = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: AppColor.white,
          ),
        ),
        title: Text(
          'My Profile',
          style: AppTextStyles.regularTextStyle.copyWith(
            color: AppColor.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(32.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ashutosh Singh',
                              style: AppTextStyles.semiBoldTextStyle.copyWith(
                                color: AppColor.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'kidlover@gmail.com',
                              style: AppTextStyles.regularTextStyle.copyWith(
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Divider(
                      color: AppColor.white,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, SavedActivitiesScreen.route),
                      child: _item(Icons.bookmark_border, 'Saved Activities'),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(
                        context,
                        FeedbackBugScreen.route,
                        arguments: FeedbackBugArg(
                          isFeedback: true,
                        ),
                      ),
                      child: _item(Icons.emoji_emotions_rounded, 'Give us Feedback'),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, FeedbackBugScreen.route),
                      child: _item(Icons.bug_report_outlined, 'Report a Bug'),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () async {
                        await AppStorage().deleteAll();
                        Navigator.pushNamed(context, LoginScreen.route);
                      },
                      child: _item(Icons.logout, 'Logout'),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(IconData iconData, String title) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20,
          color: AppColor.white,
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          title,
          style: AppTextStyles.regularTextStyle.copyWith(
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
