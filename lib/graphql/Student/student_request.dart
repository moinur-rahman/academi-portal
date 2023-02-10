import 'package:graphql/client.dart';

import '../../../api/academi_portal_api.dart';
import 'queries.dart';
import 'mutations.dart';
import '../../models/student.dart';

class StudentRequest {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> getAllStudents() async {
    client ??= helper.getClient();
    Map<String, dynamic>? response;
    try {
      response = await helper.runQuery(client!, Queries.getAllStudents);
      print(response);
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return 'Query returned null';
    }
    return 'Success';
  }

  Future<String> createStudent(Student student) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': student.email,
      'name': student.name,
      'password': student.password,
      'ID': student.id,
      'department': student.department,
      'section': student.section
    };

    Map<String, dynamic>? response;
    try {
      response =
          await helper.runMutation(client!, Mutations.createStudent, variables);
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return "Failed";
    }
    return 'Success';
  }
}
