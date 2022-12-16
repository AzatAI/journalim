part of swagger.api;

class BodyCreateTokenTokenPost {
  
  String grantType = null;

  String username = null;

  String password = null;

  String scope = "";

  String clientId = null;

  String clientSecret = null;

  BodyCreateTokenTokenPost();

  @override
  String toString() {
    return 'BodyCreateTokenTokenPost[grantType=$grantType, username=$username, password=$password, scope=$scope, clientId=$clientId, clientSecret=$clientSecret, ]';
  }

  BodyCreateTokenTokenPost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    grantType = json['grant_type'];
    username = json['username'];
    password = json['password'];
    scope = json['scope'];
    clientId = json['client_id'];
    clientSecret = json['client_secret'];
  }

  Map<String, dynamic> toJson() {
    return {
      'grant_type': grantType,
      'username': username,
      'password': password,
      'scope': scope,
      'client_id': clientId,
      'client_secret': clientSecret
     };
  }

  static List<BodyCreateTokenTokenPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyCreateTokenTokenPost>() : json.map((value) => new BodyCreateTokenTokenPost.fromJson(value)).toList();
  }

  static Map<String, BodyCreateTokenTokenPost> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BodyCreateTokenTokenPost>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BodyCreateTokenTokenPost.fromJson(value));
    }
    return map;
  }
}
