import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class TrendingSearchesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 16,
      children: [
        _item('Rock Climbing'),
        _item('Cafes'),
        _item('Road Trip to Murthal'),
        _item('Duty Free'),
        _item('Hiking'),
      ],
    );
  }

  Widget _item(String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.white,
          width: 1.2,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0) + EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.trending_up,
              size: 18,
              color: AppColor.lightGrey,
            ),
            Text(
              title,
              style: AppTextStyles.regularTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
