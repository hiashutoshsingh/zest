import 'package:zest/utils/network.dart';

import '../network.dart';

class UserApi {
  Future registerUser(String email) async {
    return AppNetwork.getClient().post('/email/', data: {
      'foo': email,
    }).then((response) {
      return response.data;
    }).catchError(
      (error) {},
    );
  }
}
