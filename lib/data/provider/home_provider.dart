import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zest/data/model/category_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/api_services/user_api.dart';

class HomeProvider extends ChangeNotifier {
  bool _loading = false;
  CategoryListResponse _categoryListResponse;

  CategoryListResponse get categoryListResponse => _categoryListResponse;

  set categoryListResponse(CategoryListResponse value) {
    _categoryListResponse = value;
    notifyListeners();
  }

  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void fetchCategories() {
    loading = true;
    ServiceApi().getCategories().then(
      (value) async {
        if (value != null) {
          print('1111');
          categoryListResponse = CategoryListResponse();
          List<CategoryItem> categories = [];
          print('2222');
          value.forEach((data) {
            print('xxxx');
            CategoryItem categoryItem = CategoryItem.fromJson(data);
            categories.add(categoryItem);
          });
          print('3333');
          _categoryListResponse.categoryList = categories;
          print('4444');
          loading = false;
          print(' categoryListResponse.categoryList ${categoryListResponse.categoryList}');
        }
      },
    ).catchError(
      (e) {
        loading = false;
        print('catchError $e');
        Fluttertoast.showToast(
          msg: 'Error while fetching Categories',
          backgroundColor: AppColor.red,
        );
      },
    );
  }
}
