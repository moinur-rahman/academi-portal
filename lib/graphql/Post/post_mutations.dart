import 'package:graphql/client.dart';
import 'dart:convert';

import '../../../api/academi_portal_api.dart';
import './mutations.dart';
import '../../models/post.dart';

class PostMutations {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> createPost(Post post) async {
    client ??= helper.getClient();
    Map<String, dynamic> variables = {
      'title': post.title,
      'description': post.description,
      'teacherId': post.teacherId
    };

    Map<String, dynamic>? response;
    try {
      response =
          await helper.runMutation(client!, Mutations.createPost, variables);
  
      return jsonEncode(response);
    } catch (e) {
      return "Failed";
    }
  }
}
