part of swagger.api;

class Token {
  
  String accessToken = null;

  String tokenType = null;

  Token();

  @override
  String toString() {
    return 'Token[accessToken=$accessToken, tokenType=$tokenType, ]';
  }

  Token.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
    tokenType = json['token_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType
     };
  }

  static List<Token> listFromJson(List<dynamic> json) {
    return json == null ? new List<Token>() : json.map((value) => new Token.fromJson(value)).toList();
  }

  static Map<String, Token> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Token>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Token.fromJson(value));
    }
    return map;
  }
}
