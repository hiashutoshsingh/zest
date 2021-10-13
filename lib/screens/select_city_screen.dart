import 'package:flutter/material.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/theme/app_theme.dart';

class SelectCityScreen extends StatefulWidget {
  static final String route = 'select_city_screen';

  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    _fetchCities();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.black,
        body: !_loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Select your City',
                    style: AppTextStyles.regularTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          _cityItem(),
                          _cityItem(),
                          _cityItem(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  _cityItem() {
    return InkWell(
      onTap: () => Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false),
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'http://35.154.174.239:1337/uploads/large_pexels_atul_saini_9370987_3379d191a8.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6) + EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Delhi',
                    style: AppTextStyles.semiBoldTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _fetchCities() {}
}
