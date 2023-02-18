import 'package:graphql/client.dart';
import 'dart:convert';

import '../../../api/academi_portal_api.dart';
import './queries.dart';
import '../../models/post.dart';

class PostQueries {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> getAllPosts() async {
    client ??= helper.getClient();

    Map<String, dynamic>? response;
    try {
      response = await helper.runQuery(client!, Queries.getAllPosts);

      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }
}
