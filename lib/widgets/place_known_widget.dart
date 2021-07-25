import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class PlaceKnownList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 16,
      children: [
        _item('Amazing Place'),
        _item('Great Vibe'),
        _item('18+'),
        _item('Happy Place'),
        _item('Fun'),
      ],
    );
  }

  Widget _item(String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0) + EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          title,
          style: AppTextStyles.thinTextStyle,
        ),
      ),
    );
  }
}
