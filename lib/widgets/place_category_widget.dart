import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class PlaceCategoryWidget extends StatelessWidget {
  final String title;

  PlaceCategoryWidget({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.darkGreen,
              width: 3,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              color: AppColor.purple,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: AppTextStyles.regularTextStyle,
        ),
      ],
    );
  }
}
