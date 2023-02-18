import 'package:graphql/client.dart';

import '../../../api/academi_portal_api.dart';
import 'queries.dart';
import '../../models/student.dart';

class StudentQueries {
  GraphQLClient? client;
  AcademiPortalApi helper = AcademiPortalApi();

  Future<String> getAllStudents() async {
    client ??= helper.getClient();
    Map<String, dynamic>? response;
    try {
      response = await helper.runQuery(client!, Queries.getAllStudents);
  
    } catch (e) {
      return e.toString();
    }

    if (response == null) {
      return 'Query returned null';
    }
    return 'Success';
  }
}
