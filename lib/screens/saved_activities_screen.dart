import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/activity_list_widget.dart';

class SavedActivitiesScreen extends StatelessWidget {
  static final String route = 'saved_activities_screen';

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
          'Saved Activities',
          style: AppTextStyles.regularTextStyle.copyWith(
            color: AppColor.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ActivityListWidget(),
      ),
    );
  }
}
