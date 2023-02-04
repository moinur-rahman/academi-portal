import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String createUser = """
  mutation CreateUser(
  \$email: String!
  \$name: String!
  \$password: String!
  \$ID: Int!
  \$department: String!
  \$section: String!
) {
  createUser(
    email: \$email
    name: \$name
    password: \$password
    ID: \$ID
    department: \$department
    section: \$section
  ) {
    email
  }
}
""";

String getAllUsers = """
query GetAllUsers{
  getAllUsers{
    email
  }
}
""";

class SignUpAlert extends StatelessWidget {
  final Map<String?, dynamic> data;
  SignUpAlert(this.data);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Logging In"),
      content: Container(
        height: 100,
        width: 100,
        child: CircularProgressIndicator(),
      ),
      // Query(
      //   options: QueryOptions(document: gql(getAllUsers)),
      //   builder: (QueryResult result,
      //       {FetchMore? fetchMore, VoidCallback? refetch}) {
      //     if (result.hasException) {
      //       return Text(result.exception.toString());
      //     }

      //     if (result.isLoading) {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     final list = result.data?["getAllUsers"][0]["email"];
      //     print(list);
      //     return Text(list);
      //   },
      // ),
    );
  }
}
