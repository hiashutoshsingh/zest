import 'package:flutter/material.dart';
import 'package:zest/data/args/category_arg.dart';
import 'package:zest/data/model/category_list_response.dart';
import 'package:zest/screens/category_listing_screen.dart';

import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  final CategoryListResponse categoryListResponse;

  CategoryList(this.categoryListResponse);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoryListResponse.categoryList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                CategoryListingScreen.route,
                arguments: CategoryArg(
                  categoryItem: categoryListResponse.categoryList[index],
                ),
              );
            },
            child: CategoryWidget(
              categoryItem: categoryListResponse.categoryList[index],
            ),
          ),
        );
      },
    );
  }
}
