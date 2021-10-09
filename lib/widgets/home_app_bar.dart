import 'package:flutter/material.dart';
import 'package:zest/screens/login_screen.dart';
import 'package:zest/screens/search_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/app_storage.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  String _chosenValue;

  @override
  void initState() {
    super.initState();
    _chosenValue = 'Noida';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 24,
                      color: AppColor.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    PopupMenuButton<String>(
                      elevation: 0,
                      initialValue: _chosenValue,
                      color: Colors.white,
                      child: Text(
                        _chosenValue,
                        style: AppTextStyles.regularTextStyle.copyWith(
                          color: AppColor.white,
                        ),
                      ),
                      offset: Offset.fromDirection(100, 0),
                      onSelected: (v) {
                        setState(() {
                          _chosenValue = v;
                        });
                      },
                      itemBuilder: (context) {
                        return [
                          'New Delhi',
                          'Noida',
                          'Gurgaon',
                        ].map(
                          (str) {
                            return PopupMenuItem(
                              value: str,
                              child: Text(
                                str,
                                style: AppTextStyles.thinTextStyle.copyWith(
                                  color: AppColor.black,
                                  // fontSize: 16,
                                ),
                              ),
                            );
                          },
                        ).toList();
                      },
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 24,
                      color: AppColor.white,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () async {
                    await AppStorage().deleteAll();
                    Navigator.pushNamed(context, LoginScreen.route);
                    // Navigator.pushNamed(context, ProfileScreen.route);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColor.darkGreen,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.person,
                        size: 16,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, SearchScreen.route),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColor.white,
                    width: .5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: AppColor.lightGrey,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Search for places or activities',
                        style: AppTextStyles.regularTextStyle.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
