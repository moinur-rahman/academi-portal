import 'dart:convert';

import 'package:graphql/client.dart';

import '../../../api/academi_portal_api.dart';
import 'mutations.dart';
import '../../models/student.dart';

class StudentMutations {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> createStudent(Student student) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': student.email,
      'name': student.name,
      'password': student.password,
      'studentId': student.studentId,
      'department': student.department,
      'section': student.section,
      'phone': student.phone
    };

    try {
      Map<String, dynamic>? response =
          await helper.runMutation(client!, Mutations.createStudent, variables);
      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }

  Future<String> studentLogin(Student student) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': student.email,
      'password': student.password,
    };

    try {
      Map<String, dynamic>? response =
          await helper.runMutation(client!, Mutations.studentLogin, variables);
      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }
}
