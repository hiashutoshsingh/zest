import 'package:flutter/material.dart';
import 'package:zest/screens/category_listing_screen.dart';

import 'place_category_widget.dart';

class ThingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, CategoryListingScreen.route);
            },
            child: PlaceCategoryWidget(
              title: 'index ${index + 1}',
            ),
          ),
        );
      },
    );
  }
}
