import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@injectable
class GraphQLManager {
  Future<QueryResult> query(
    String link,
    String query,
    Map<String, dynamic> parameters,
  ) async {
    final QueryOptions options = QueryOptions(
      document: gql(query),
      variables: parameters,
    );
    final client = await _getClient(link);
    final result = client.query(options);
    return result;
  }

  Future<GraphQLClient> _getClient(String link) async {
    final store = await HiveStore.open();
    return GraphQLClient(
      cache: GraphQLCache(store: store),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
        ),
      ),
      link: HttpLink(link),
    );
  }
}
