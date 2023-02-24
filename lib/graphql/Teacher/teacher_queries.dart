import 'package:graphql/client.dart';
import 'dart:convert';
import '../../../api/academi_portal_api.dart';
import './queries.dart';

class TeacherQueries {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> getTeacherById(String id) async {
    client ??= helper.getClient();

    Map<String, dynamic>? response;
    try {
      response = await helper
          .runQuery(client!, Queries.getTeacherById, variables: {id: id});

      return jsonEncode(response);
    } catch (e) {

      return "Failed";
    }
  }
}
