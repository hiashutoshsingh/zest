import 'package:flutter/material.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/theme/app_theme.dart';

class PlaceKnownList extends StatelessWidget {
  final List<ReviewTags> reviewTags;

  PlaceKnownList(this.reviewTags);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets = [];
    reviewTags.forEach((element) {
      if (element != null && element.value != null) {
        _widgets.add(_item(element.value));
      }
    });
    return Wrap(
      spacing: 12,
      runSpacing: 16,
      children: _widgets,
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
        child: Text(
          title,
          style: AppTextStyles.regularTextStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
