import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class NoNetworkWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.network_check,
            size: 32,
            color: AppColor.white,
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Oops! Looks like your are off the Grid',
            style: AppTextStyles.thinTextStyle.copyWith(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
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
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
