import 'package:flutter/material.dart';
import 'package:zest/screens/place_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/popular_thing_widget.dart';

class PopularThingsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              'Popular Things to do in your City',
              style: AppTextStyles.regularTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                PlaceScreen.route,
              );
            },
            child: PopularThingWidget(
              title: 'Climb Central Delhi',
              rating: '4',
              price: '₹ 500 for one',
            ),
          ),
        );
      },
    );
  }
}
