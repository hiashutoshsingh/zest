import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/widgets/menu_list.dart';
import 'package:zest/widgets/place_known_widget.dart';

class PlaceScreen extends StatelessWidget {
  static final String route = 'place_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.purple,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.lightGrey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back,
                            size: 24,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delhi',
                                  style: AppTextStyles.regularTextStyle.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '4.5',
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
                                _placeInfoIcon(Icons.call, 'Call'),
                                _placeInfoIcon(Icons.timelapse, 'Timing'),
                                _placeInfoIcon(Icons.bookmark_border, 'Save'),
                                _placeInfoIcon(Icons.share_outlined, 'Share'),
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
                        Row(
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
                        ),
                        Text(
                          'Get Direction',
                          style: AppTextStyles.semiBoldTextStyle.copyWith(
                            color: AppColor.teal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '1, Global Avenue, Mehrauli-Gurgaon Rd, Aya Nagar, New Delhi, Delhi 110047',
                      style: AppTextStyles.thinTextStyle,
                    ),
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
                        Text(
                          'Description',
                          style: AppTextStyles.regularTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Climb Central originated in Singapore in 2014. The founders of Climb Central have been associated with rock climbing for the past 20+ years and Climb Central was an effort by the founders to make the sport accessible to all. With humble beginnings in 2014, the rapid rise of Climb Central belied all expectations and quickly led to the brand’s expansion in Singapore and other parts of Asia. Climb Central was founded on a single fundamental belief',
                      style: AppTextStyles.thinTextStyle,
                    ),
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
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '₹ 500 for one',
                      style: AppTextStyles.thinTextStyle,
                    ),
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
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 120,
                      child: MenuList(),
                    ),
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
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    PlaceKnownList(),
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
}
