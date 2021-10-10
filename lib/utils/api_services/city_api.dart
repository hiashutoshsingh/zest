import 'package:zest/utils/network.dart';

class AssignmentApi {
  final String _lesson = 'lesson_api';

  Future getAssignments(String ageGroup) async {
    return AppNetwork.getClient().get(
      '/$_lesson/assignment/',
      queryParameters: {
        'age_group': ageGroup,
      },
    ).then(
      (response) {
        return response.data;
      },
    );
  }
}
