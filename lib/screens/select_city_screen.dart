import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:zest/data/model/city_list_response.dart';
import 'package:zest/data/provider/city_provider.dart';
import 'package:zest/screens/home_screen.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/app_storage.dart';
import 'package:zest/utils/constants.dart';
import 'package:zest/widgets/glass_container.dart';

class SelectCityScreen extends StatefulWidget {
  static final String route = 'select_city_screen';

  @override
  _SelectCityScreenState createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timings) {
      Provider.of<CityProvider>(context, listen: false).fetchCities();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<CityProvider>(
        builder: (BuildContext pContext, cityProvider, Widget child) {
          if (cityProvider.loading || cityProvider.cityListResponse == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            backgroundColor: AppColor.black,
            body: Column(
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
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cityProvider.cityListResponse.cityList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _cityItem(cityProvider.cityListResponse.cityList[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _cityItem(CityItem cityItem) {
    return InkWell(
      onTap: () async {
        await AppStorage().writeData(selectedCityKey, cityItem.id);
        Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false);
      },
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  '$apiUrl${cityItem.cityImage.image.url}',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: GlassContainer(
                  width: MediaQuery.of(context).size.width * .3,
                  height: 36,
                  child: Center(
                    child: Text(
                      cityItem.cityName,
                      style: AppTextStyles.semiBoldTextStyle,
                    ),
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
