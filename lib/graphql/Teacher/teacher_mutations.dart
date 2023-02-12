import 'dart:convert';

import 'package:graphql/client.dart';

import '../../../api/academi_portal_api.dart';
import './mutations.dart';
import '../../models/teacher.dart';

class TeacherMutations {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> createTeacher(Teacher teacher) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': teacher.email,
      'name': teacher.name,
      'password': teacher.password,
      'department': teacher.department,
      'phone': teacher.phone
    };

    Map<String, dynamic>? response;
    try {
      response =
          await helper.runMutation(client!, Mutations.createTeacher, variables);
      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }

  Future<String> teacherLogin(Teacher teacher) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': teacher.email,
      'password': teacher.password,
    };

    try {
      Map<String, dynamic>? response =
          await helper.runMutation(client!, Mutations.teacherLogin, variables);

      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }
}
