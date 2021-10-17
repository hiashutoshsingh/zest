import 'package:zest/utils/common.dart';
import 'package:zest/utils/network.dart';

import '../network.dart';

class UserApi {
  Future registerUser(String email) async {
    print("registerUser");
    return AppNetwork.getClient().post('/email/', data: {
      'foo': email,
    }).then((response) {
      print("Response From:${response.statusCode},${response.data}");
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        print("error From:$error");
      },
    );
  }

  Future getCities() async {
    return AppNetwork.getClient().get('/cities/').then((response) {
      Common.responsePrint(response);
      return response.data;
    }).catchError(
      (error) {
        print("error From:$error");
      },
    );
  }
}
