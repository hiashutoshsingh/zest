import 'package:zest/utils/common.dart';
import 'package:zest/utils/network.dart';

import '../app_logger.dart';
import '../network.dart';

class ServiceApi {
  Future registerUser(String email) async {
    return AppNetwork.getClient().post('/email/', data: {
      'foo': email,
    }).then((response) {
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        AppLogger.print("ServiceApi: $error");
      },
    );
  }

  Future getCities() async {
    return AppNetwork.getClient().get('/cities/').then((response) {
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        AppLogger.print("ServiceApi: $error");
      },
    );
  }

  Future getCategories() async {
    return AppNetwork.getClient().get('/categories/').then((response) {
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        AppLogger.print("ServiceApi: $error");
      },
    );
  }

  Future getActivities() async {
    return AppNetwork.getClient().get('/activities/').then((response) {
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        AppLogger.print("ServiceApi: $error");
      },
    );
  }
}
