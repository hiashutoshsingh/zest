import 'package:flutter/material.dart';
import 'package:zest/data/model/category_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/constants.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryItem categoryItem;

  CategoryWidget({
    this.categoryItem,
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
          child: SizedBox(
            width: 60,
            height: 60,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(128),
              child: Image.network(
                apiUrl + categoryItem.categoryImage.image.formats.medium.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          categoryItem.categoryName,
          style: AppTextStyles.regularTextStyle,
        ),
      ],
    );
  }
}
