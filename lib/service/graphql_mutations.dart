class GraphQLMutations {
  static const addStar = '''
  mutation AddStar(\$starrableId: ID!) {
  addStar(input: {starrableId: \$starrableId}) {
    starrable {
      viewerHasStarred
    }
  }
}''';

  static const removeStar = '''
  mutation RemoveStar(\$starrableId: ID!) {
  removeStar(input: {starrableId: \$starrableId}) {
    starrable {
      viewerHasStarred
    }
  }
}''';

}
