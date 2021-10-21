import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zest/data/model/city_list_response.dart';
import 'package:zest/data/provider/city_provider.dart';
import 'package:zest/screens/profile_screen.dart';
import 'package:zest/screens/search_screen.dart';
import 'package:zest/theme/app_theme.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
                    Consumer<CityProvider>(
                      builder: (BuildContext pContext, cityProvider, Widget child) {
                        return PopupMenuButton<CityItem>(
                          elevation: 0,
                          initialValue: cityProvider.selectedCity,
                          color: Colors.white,
                          child: Text(
                            cityProvider.selectedCity.cityName,
                            style: AppTextStyles.regularTextStyle.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                          offset: Offset.fromDirection(100, 0),
                          onSelected: (v) {
                            cityProvider.selectedCity = v;
                          },
                          itemBuilder: (context) {
                            return cityProvider.cityListResponse.cityList.map(
                              (city) {
                                return PopupMenuItem(
                                  value: city,
                                  child: Text(
                                    city.cityName,
                                    style: AppTextStyles.thinTextStyle.copyWith(
                                      color: AppColor.black,
                                      // fontSize: 16,
                                    ),
                                  ),
                                );
                              },
                            ).toList();
                          },
                        );
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
                    Navigator.pushNamed(context, ProfileScreen.route);
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
