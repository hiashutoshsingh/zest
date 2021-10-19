import 'package:flutter/material.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/constants.dart';

import 'glass_container.dart';

class ActivityWidget extends StatelessWidget {
  final ActivityItem activityItem;

  ActivityWidget({
    this.activityItem,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .4,
        child: Stack(
          children: [
            Image.network(
              apiUrl + activityItem.activityImages.image.first.url,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: 0,
              child: GlassContainer(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .14,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            activityItem.activityName,
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
                                size: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                activityItem.rating.toString(),
                                style: AppTextStyles.regularTextStyle.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            ' ₹ ' + activityItem.estimatedCost.toString(),
                            style: AppTextStyles.regularTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.bookmark_border,
                              color: AppColor.white,
                              size: 20,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Icon(
                              Icons.share,
                              color: AppColor.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
