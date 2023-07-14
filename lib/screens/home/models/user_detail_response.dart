/// user : {"avatarUrl":"https://avatars.githubusercontent.com/u/971411?s=200&v=4","name":"Jenil Gogari","email":"","login":"jenil","repositories":{"pageInfo":{"endCursor":"Y3Vyc29yOnYyOpHOAwGGPw==","startCursor":"Y3Vyc29yOnYyOpHOAFaVqQ=="},"totalCount":26,"edges":[{"node":{"id":"MDEwOlJlcG9zaXRvcnk1Njc0NDA5","name":"jim","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk3NjQ2MTY5","name":"impress.js","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk5MTQzNDk1","name":"esp-app","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzAwODY4Ng==","name":"bootswatch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzgzNjY0MQ==","name":"simple-ecomme","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNDU0NzcwNw==","name":"glyphsearch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNTY0NzA3Nw==","name":"bigrock","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkyOTI0NDI3Mw==","name":"icono","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk0ODA2MTQzNQ==","name":"ipinfodb-middlware","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk1MDQzMTU1MQ==","name":"react-cordova-kit","viewerHasStarred":false}}]},"followers":{"totalCount":147},"following":{"totalCount":48}}

class UserDetailResponse {
  UserDetailResponse({
      User? user,}){
    _user = user;
}

  UserDetailResponse.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? _user;
UserDetailResponse copyWith({  User? user,
}) => UserDetailResponse(  user: user ?? _user,
);
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// avatarUrl : "https://avatars.githubusercontent.com/u/971411?s=200&v=4"
/// name : "Jenil Gogari"
/// email : ""
/// login : "jenil"
/// repositories : {"pageInfo":{"endCursor":"Y3Vyc29yOnYyOpHOAwGGPw==","startCursor":"Y3Vyc29yOnYyOpHOAFaVqQ=="},"totalCount":26,"edges":[{"node":{"id":"MDEwOlJlcG9zaXRvcnk1Njc0NDA5","name":"jim","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk3NjQ2MTY5","name":"impress.js","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk5MTQzNDk1","name":"esp-app","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzAwODY4Ng==","name":"bootswatch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzgzNjY0MQ==","name":"simple-ecomme","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNDU0NzcwNw==","name":"glyphsearch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNTY0NzA3Nw==","name":"bigrock","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkyOTI0NDI3Mw==","name":"icono","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk0ODA2MTQzNQ==","name":"ipinfodb-middlware","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk1MDQzMTU1MQ==","name":"react-cordova-kit","viewerHasStarred":false}}]}
/// followers : {"totalCount":147}
/// following : {"totalCount":48}

class User {
  User({
      String? avatarUrl, 
      String? name, 
      String? email, 
      String? login, 
      Repositories? repositories, 
      Followers? followers, 
      Following? following,}){
    _avatarUrl = avatarUrl;
    _name = name;
    _email = email;
    _login = login;
    _repositories = repositories;
    _followers = followers;
    _following = following;
}

  User.fromJson(dynamic json) {
    _avatarUrl = json['avatarUrl'];
    _name = json['name'];
    _email = json['email'];
    _login = json['login'];
    _repositories = json['repositories'] != null ? Repositories.fromJson(json['repositories']) : null;
    _followers = json['followers'] != null ? Followers.fromJson(json['followers']) : null;
    _following = json['following'] != null ? Following.fromJson(json['following']) : null;
  }
  String? _avatarUrl;
  String? _name;
  String? _email;
  String? _login;
  Repositories? _repositories;
  Followers? _followers;
  Following? _following;
User copyWith({  String? avatarUrl,
  String? name,
  String? email,
  String? login,
  Repositories? repositories,
  Followers? followers,
  Following? following,
}) => User(  avatarUrl: avatarUrl ?? _avatarUrl,
  name: name ?? _name,
  email: email ?? _email,
  login: login ?? _login,
  repositories: repositories ?? _repositories,
  followers: followers ?? _followers,
  following: following ?? _following,
);
  String? get avatarUrl => _avatarUrl;
  String? get name => _name;
  String? get email => _email;
  String? get login => _login;
  Repositories? get repositories => _repositories;
  Followers? get followers => _followers;
  Following? get following => _following;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatarUrl'] = _avatarUrl;
    map['name'] = _name;
    map['email'] = _email;
    map['login'] = _login;
    if (_repositories != null) {
      map['repositories'] = _repositories?.toJson();
    }
    if (_followers != null) {
      map['followers'] = _followers?.toJson();
    }
    if (_following != null) {
      map['following'] = _following?.toJson();
    }
    return map;
  }

}

/// totalCount : 48

class Following {
  Following({
      num? totalCount,}){
    _totalCount = totalCount;
}

  Following.fromJson(dynamic json) {
    _totalCount = json['totalCount'];
  }
  num? _totalCount;
Following copyWith({  num? totalCount,
}) => Following(  totalCount: totalCount ?? _totalCount,
);
  num? get totalCount => _totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = _totalCount;
    return map;
  }

}

/// totalCount : 147

class Followers {
  Followers({
      num? totalCount,}){
    _totalCount = totalCount;
}

  Followers.fromJson(dynamic json) {
    _totalCount = json['totalCount'];
  }
  num? _totalCount;
Followers copyWith({  num? totalCount,
}) => Followers(  totalCount: totalCount ?? _totalCount,
);
  num? get totalCount => _totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = _totalCount;
    return map;
  }

}

/// pageInfo : {"endCursor":"Y3Vyc29yOnYyOpHOAwGGPw==","startCursor":"Y3Vyc29yOnYyOpHOAFaVqQ=="}
/// totalCount : 26
/// edges : [{"node":{"id":"MDEwOlJlcG9zaXRvcnk1Njc0NDA5","name":"jim","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk3NjQ2MTY5","name":"impress.js","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk5MTQzNDk1","name":"esp-app","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzAwODY4Ng==","name":"bootswatch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxMzgzNjY0MQ==","name":"simple-ecomme","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNDU0NzcwNw==","name":"glyphsearch","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkxNTY0NzA3Nw==","name":"bigrock","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnkyOTI0NDI3Mw==","name":"icono","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk0ODA2MTQzNQ==","name":"ipinfodb-middlware","viewerHasStarred":false}},{"node":{"id":"MDEwOlJlcG9zaXRvcnk1MDQzMTU1MQ==","name":"react-cordova-kit","viewerHasStarred":false}}]

class Repositories {
  Repositories({
      PageInfo? pageInfo, 
      num? totalCount, 
      List<Edges>? edges,}){
    _pageInfo = pageInfo;
    _totalCount = totalCount;
    _edges = edges;
}

  Repositories.fromJson(dynamic json) {
    _pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
    _totalCount = json['totalCount'];
    if (json['edges'] != null) {
      _edges = [];
      json['edges'].forEach((v) {
        _edges?.add(Edges.fromJson(v));
      });
    }
  }
  PageInfo? _pageInfo;
  num? _totalCount;
  List<Edges>? _edges;
Repositories copyWith({  PageInfo? pageInfo,
  num? totalCount,
  List<Edges>? edges,
}) => Repositories(  pageInfo: pageInfo ?? _pageInfo,
  totalCount: totalCount ?? _totalCount,
  edges: edges ?? _edges,
);
  PageInfo? get pageInfo => _pageInfo;
  num? get totalCount => _totalCount;
  List<Edges>? get edges => _edges;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pageInfo != null) {
      map['pageInfo'] = _pageInfo?.toJson();
    }
    map['totalCount'] = _totalCount;
    if (_edges != null) {
      map['edges'] = _edges?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// node : {"id":"MDEwOlJlcG9zaXRvcnk1Njc0NDA5","name":"jim","viewerHasStarred":false}

class Edges {
  Edges({
      Node? node,}){
    _node = node;
}

  Edges.fromJson(dynamic json) {
    _node = json['node'] != null ? Node.fromJson(json['node']) : null;
  }
  Node? _node;
Edges copyWith({  Node? node,
}) => Edges(  node: node ?? _node,
);
  Node? get node => _node;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_node != null) {
      map['node'] = _node?.toJson();
    }
    return map;
  }

}

/// id : "MDEwOlJlcG9zaXRvcnk1Njc0NDA5"
/// name : "jim"
/// viewerHasStarred : false

class Node {
  Node({
      String? id, 
      String? name, 
      bool? viewerHasStarred,}){
    _id = id;
    _name = name;
    _viewerHasStarred = viewerHasStarred;
}

  Node.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _viewerHasStarred = json['viewerHasStarred'];
  }
  String? _id;
  String? _name;
  bool? _viewerHasStarred;
Node copyWith({  String? id,
  String? name,
  bool? viewerHasStarred,
}) => Node(  id: id ?? _id,
  name: name ?? _name,
  viewerHasStarred: viewerHasStarred ?? _viewerHasStarred,
);
  String? get id => _id;
  String? get name => _name;
  bool? get viewerHasStarred => _viewerHasStarred;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['viewerHasStarred'] = _viewerHasStarred;
    return map;
  }

}

/// endCursor : "Y3Vyc29yOnYyOpHOAwGGPw=="
/// startCursor : "Y3Vyc29yOnYyOpHOAFaVqQ=="

class PageInfo {
  PageInfo({
      String? endCursor, 
      String? startCursor,}){
    _endCursor = endCursor;
    _startCursor = startCursor;
}

  PageInfo.fromJson(dynamic json) {
    _endCursor = json['endCursor'];
    _startCursor = json['startCursor'];
  }
  String? _endCursor;
  String? _startCursor;
PageInfo copyWith({  String? endCursor,
  String? startCursor,
}) => PageInfo(  endCursor: endCursor ?? _endCursor,
  startCursor: startCursor ?? _startCursor,
);
  String? get endCursor => _endCursor;
  String? get startCursor => _startCursor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['endCursor'] = _endCursor;
    map['startCursor'] = _startCursor;
    return map;
  }

}