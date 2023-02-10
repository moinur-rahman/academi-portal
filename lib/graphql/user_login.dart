import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/academi_portal_api.dart';
import '../../models/user.dart';

String loginStudent = '''
mutation LoginStudent(
  \$email: String!
  \$password: String!
){
  userLogin(
    email: \$email
    password: \$password) {
    email
  }
}
''';

class UserLogin {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> login(User user) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'email': user.email,
      'password': user.password,
    };

    Map<String, dynamic>? response;
    try {
      Map<String, dynamic>? response =
          await helper.runMutation(client!, loginStudent, variables);

      return jsonEncode(response);
    } catch (e) {
      throw Error();
    }
  }
}
