import 'package:github_demo_graphql/utils/api_utils.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  late HttpLink httpLink;
  late AuthLink authLink;
  late Link link;

  GraphQLService() {
    httpLink = HttpLink('https://api.github.com/graphql');

    authLink = AuthLink(
      getToken: () async => 'Bearer ${ApiUtils.githubToken}',
    );

    link = authLink.concat(httpLink);
  }
}
