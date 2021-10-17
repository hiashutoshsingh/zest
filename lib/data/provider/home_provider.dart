import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zest/data/model/activity_list_response.dart';
import 'package:zest/data/model/category_list_response.dart';
import 'package:zest/theme/app_theme.dart';
import 'package:zest/utils/api_services/user_api.dart';

class HomeProvider extends ChangeNotifier {
  bool _categoryLoading = false;
  CategoryListResponse _categoryListResponse;
  ActivityListResponse _activityListResponse;
  bool _activityLoading = false;

  bool get activityLoading => _activityLoading;

  set activityLoading(bool value) {
    _activityLoading = value;
    notifyListeners();
  }

  bool get categoryLoading => _categoryLoading;

  set categoryLoading(bool value) {
    _categoryLoading = value;
    notifyListeners();
  }

  ActivityListResponse get activityListResponse => _activityListResponse;

  set activityListResponse(ActivityListResponse value) {
    _activityListResponse = value;
    notifyListeners();
  }

  CategoryListResponse get categoryListResponse => _categoryListResponse;

  set categoryListResponse(CategoryListResponse value) {
    _categoryListResponse = value;
    notifyListeners();
  }

  void fetchCategories() {
    categoryLoading = true;
    ServiceApi().getCategories().then(
      (value) async {
        if (value != null) {
          categoryListResponse = CategoryListResponse();
          List<CategoryItem> categories = [];
          value.forEach((data) {
            CategoryItem categoryItem = CategoryItem.fromJson(data);
            categories.add(categoryItem);
          });
          categoryListResponse.categoryList = categories;
          categoryLoading = false;
        }
      },
    ).catchError(
      (e) {
        categoryLoading = false;
        Fluttertoast.showToast(
          msg: 'Error while fetching Categories',
          backgroundColor: AppColor.red,
        );
      },
    );
  }

  void fetchActivities() {
    activityLoading = true;
    ServiceApi().getActivities().then(
      (value) async {
        if (value != null) {
          activityListResponse = ActivityListResponse();
          List<ActivityItem> activities = [];
          value.forEach((data) {
            ActivityItem activityItem = ActivityItem.fromJson(data);
            activities.add(activityItem);
          });
          activityListResponse.activityList = activities;
          activityLoading = false;
        }
      },
    ).catchError(
      (e) {
        print('fetchActivities $e');
        activityLoading = false;
        Fluttertoast.showToast(
          msg: 'Error while fetching Categories',
          backgroundColor: AppColor.red,
        );
      },
    );
  }
}
