import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static final String route = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _chosenValue;

  @override
  void initState() {
    super.initState();
    _chosenValue = 'Noida';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              _homeAppBar(),
              _places(),
              _placesList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _homeAppBar() {
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
                Container(
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
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              style: AppTextStyles.regularTextStyle.copyWith(
                color: AppColor.lightWhite,
              ),
              decoration: InputDecoration(
                fillColor: Color(0xff242F3B),
                filled: true,
                contentPadding: EdgeInsets.all(8),
                hintStyle: AppTextStyles.regularTextStyle.copyWith(
                  color: AppColor.white,
                ),
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                hintText: 'Search for places or activities',
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: AppColor.lightWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _places() {
    return Container();
  }

  Widget _placesList() {
    return Container();
  }
}
