import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zest/data/args/activity_arg.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/common.dart';
import 'package:zest/widgets/carousel_image.dart';
import 'package:zest/widgets/glass_container.dart';
import 'package:zest/widgets/menu_list.dart';
import 'package:zest/widgets/place_known_widget.dart';

class ActivityScreen extends StatelessWidget {
  static final String route = 'activity_screen';

  @override
  Widget build(BuildContext context) {
    ActivityItem activityItem;
    final activityArg = ModalRoute.of(context).settings.arguments as ActivityArg;
    if (activityArg != null && activityArg.activityItem != null) {
      activityItem = activityArg.activityItem;
    }

    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: CarouselImageWidget(
                      activityItem.activityImages.image,
                      MediaQuery.of(context).size.height * .18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(128),
                        child: GlassContainer(
                          width: 48,
                          height: 48,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 24,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: GlassContainer(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .18,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  activityItem.activityName,
                                  style: AppTextStyles.regularTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      activityItem.rating.toString(),
                                      style: AppTextStyles.regularTextStyle,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 2,
                                      ),
                                      child: Icon(
                                        Icons.star,
                                        size: 20,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                activityItem.contact != null
                                    ? InkWell(
                                        onTap: () {
                                          Common.launchURL('tel:${activityItem.contact}');
                                        },
                                        child: _placeInfoIcon(Icons.call, 'Call'),
                                      )
                                    : Container(),
                                activityItem.timing != null && activityItem.timing.isNotEmpty
                                    ? _placeInfoIcon(Icons.timelapse, 'Timing')
                                    : Container(),
                                _placeInfoIcon(Icons.bookmark_border, 'Save'),
                                InkWell(
                                  onTap: () {
                                    _onShare(context, activityItem);
                                  },
                                  child: _placeInfoIcon(Icons.share_outlined, 'Share'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        activityItem.location != null &&
                                activityItem.location.geoCoordinates != null &&
                                activityItem.location.geoCoordinates.coordinates != null
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 2,
                                    ),
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: AppColor.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Location',
                                    style: AppTextStyles.regularTextStyle,
                                  ),
                                ],
                              )
                            : Container(),
                        activityItem.location != null &&
                                activityItem.location.geoCoordinates != null &&
                                activityItem.location.geoCoordinates.coordinates != null
                            ? InkWell(
                                onTap: () {
                                  Common.launchURL(
                                      'https://www.google.com/maps/search/?api=1&query=${activityItem.location.geoCoordinates.coordinates[0]},${activityItem.location.geoCoordinates.coordinates[1]}');
                                },
                                child: Text(
                                  'Get Direction',
                                  style: AppTextStyles.semiBoldTextStyle.copyWith(
                                    color: AppColor.teal,
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    activityItem.location != null && activityItem.location.address != null
                        ? Text(
                            activityItem.location.address,
                            style: AppTextStyles.thinTextStyle,
                          )
                        : Container(),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 2,
                          ),
                          child: Icon(
                            Icons.info_outline,
                            size: 20,
                            color: AppColor.white,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        activityItem.description != null
                            ? Text(
                                'Description',
                                style: AppTextStyles.regularTextStyle,
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    activityItem.description != null
                        ? Text(
                            activityItem.description,
                            style: AppTextStyles.thinTextStyle,
                          )
                        : Container(),
                    SizedBox(
                      height: 16,
                    ),
                    activityItem.estimatedCost != null
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Icon(
                                  Icons.monetization_on_outlined,
                                  size: 20,
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Estimated Cost',
                                style: AppTextStyles.regularTextStyle,
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(
                      height: 12,
                    ),
                    activityItem.estimatedCost != null
                        ? Text(
                            '₹ ' + activityItem.estimatedCost,
                            style: AppTextStyles.thinTextStyle,
                          )
                        : Container(),
                    SizedBox(
                      height: 16,
                    ),
                    activityItem.menuImages != null && activityItem.menuImages.images != null
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Icon(
                                  Icons.no_meals_outlined,
                                  size: 20,
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Menu',
                                style: AppTextStyles.regularTextStyle,
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(
                      height: 12,
                    ),
                    activityItem.menuImages != null && activityItem.menuImages.images != null
                        ? Container(
                            height: 120,
                            child: MenuList(activityItem.menuImages.images),
                          )
                        : Container(),
                    SizedBox(
                      height: 16,
                    ),
                    activityItem.reviewTags != null && activityItem.reviewTags.isNotEmpty
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 2,
                                ),
                                child: Icon(
                                  Icons.people_alt_outlined,
                                  size: 20,
                                  color: AppColor.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'People say this place is known for',
                                style: AppTextStyles.regularTextStyle,
                              ),
                            ],
                          )
                        : Container(),
                    SizedBox(
                      height: 12,
                    ),
                    activityItem.reviewTags != null && activityItem.reviewTags.isNotEmpty
                        ? PlaceKnownList(activityItem.reviewTags)
                        : Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _placeInfoIcon(IconData iconData, String title) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.white,
              width: 2,
            ),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              size: 24,
              color: AppColor.white,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: AppTextStyles.regularTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  void _onShare(BuildContext context, ActivityItem activityItem) async {
    final box = context.findRenderObject() as RenderBox;

    await Share.share('Check this out!\n\n${activityItem.activityName}\n${activityItem.description}',
        subject: 'subject', sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
