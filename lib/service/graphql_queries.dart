class GraphQLQueries {
  static const readRepositories = '''query GithubGraphQL(\$login: String!) {
  user(login: \$login) {
    avatarUrl(size: 200)
    name
    email
    login
    repositories(first: 100) {
      pageInfo {
        endCursor
        startCursor
      }
      totalCount
      edges {
        node {
          id
          name
          viewerHasStarred
        }
      }
    }
    followers {
      totalCount
    }
    following {
      totalCount
    }
  }
}''';
}
