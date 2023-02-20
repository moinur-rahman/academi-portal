import 'package:graphql/client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AcademiPortalApi {
  GraphQLClient getClient() {
    final httpLink = HttpLink(dotenv.env['WIFI_PORT'] as String);

    return GraphQLClient(link: httpLink, cache: GraphQLCache());
  }

  Future<Map<String, dynamic>?> runQuery(GraphQLClient client, String query,
      {Map<String, dynamic>? variables}) async {
    final QueryOptions options = variables != null
        ? QueryOptions(document: gql(query), variables: variables)
        : QueryOptions(document: gql(query));
    final QueryResult result = await client.query(options);

    if (result.hasException) {
      throw 'GraphQL Query Exception: ${result.exception.toString()}';
    }

    return result.data;
  }

  Future<Map<String, dynamic>?> runMutation(
    GraphQLClient client,
    String mutationQuery,
    Map<String, dynamic> variables,
  ) async {
    final MutationOptions options = MutationOptions(
      document: gql(mutationQuery),
      variables: variables,
    );
    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      throw 'GraphQL Mutation Exception: ${result.exception.toString()}';
    }

    return result.data;
  }
}
