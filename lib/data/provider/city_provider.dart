import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zest/data/model/city_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/api_services/user_api.dart';

class CityProvider extends ChangeNotifier {
  bool _loading = false;
  CityListResponse _cityListResponse;
  CityItem _selectedCity;
  List<String> _cityListString = [];

  List<String> get cityListString => _cityListString;

  set cityListString(List<String> value) {
    _cityListString = value;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  CityItem get selectedCity => _selectedCity;

  set selectedCity(CityItem value) {
    _selectedCity = value;
    notifyListeners();
  }

  CityListResponse get cityListResponse => _cityListResponse;

  set cityListResponse(CityListResponse value) {
    _cityListResponse = value;
    notifyListeners();
  }

  void fetchCities() {
    loading = true;
    ServiceApi().getCities().then(
      (value) async {
        if (value != null) {
          cityListResponse = CityListResponse();
          List<CityItem> cities = [];
          value.forEach((data) {
            CityItem cityItem = CityItem.fromJson(data);
            cities.add(cityItem);
            cityListString.add(cityItem.cityName);
          });
          cityListResponse.cityList = cities;
          loading = false;
        }
      },
    ).catchError(
      (e) {
        print('catchError $e');
        loading = false;
        Fluttertoast.showToast(
          msg: 'Error while fetching cities',
          backgroundColor: AppColor.red,
        );
      },
    );
  }
}
