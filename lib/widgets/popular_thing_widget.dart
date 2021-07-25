import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class PopularThingWidget extends StatelessWidget {
  final String title;
  final String rating;
  final String price;

  PopularThingWidget({
    this.title,
    this.price,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height * .4,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.regularTextStyle,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColor.white,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            rating,
                            style: AppTextStyles.regularTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        price,
                        style: AppTextStyles.regularTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.bookmark_border,
                        color: AppColor.white,
                        size: 24,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Icon(
                        Icons.share,
                        color: AppColor.white,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
