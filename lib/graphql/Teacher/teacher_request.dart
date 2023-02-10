import 'package:graphql/client.dart';

import '../../../api/academi_portal_api.dart';
import './mutations.dart';
import '../../models/teacher.dart';

class TeacherRequest {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> createTeacher(Teacher teacher) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': teacher.email,
      'name': teacher.name,
      'password': teacher.password,
      'department': teacher.department,
    };

    Map<String, dynamic>? response;
    try {
      response =
          await helper.runMutation(client!, Mutations.createTeacher, variables);
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return "Failed";
    }
    return 'Success';
  }
}
