import 'package:graphql/client.dart';

import '../../api/academi_portal_api.dart';
import './queries.dart';
import './mutations.dart';
import '../models/student.dart';

class StudentRequest {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> getUsers() async {
    client ??= helper.getClient();
    Map<String, dynamic>? response;
    try {
      response = await helper.runQuery(client!, Queries.getAllUsers);
      print(response);
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return 'Query returned null';
    }
    return 'Success';
  }

  Future<String> createUser(Student student) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': student.email,
      'name': student.name,
      'password': student.password,
      'ID': student.ID,
      'department': student.department,
      'section': student.section
    };

    Map<String, dynamic>? response;
    try {
      response =
          await helper.runMutation(client!, Mutations.createUser, variables);
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return "Failed";
    }
    return 'Success';
  }
}
