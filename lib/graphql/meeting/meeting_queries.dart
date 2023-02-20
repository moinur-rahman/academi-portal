import 'package:graphql/client.dart';
import 'dart:convert';

import '../../../api/academi_portal_api.dart';
import './queries.dart';
import '../../models/post.dart';

class MeetingQueries {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> setMeeting() async {
    client ??= helper.getClient();

    Map<String, dynamic>? response;
    try {
      response = await helper.runQuery(client!, Queries.setMeeting);

      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }
}
