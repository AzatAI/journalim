part of swagger.api;

class UserCreate {
  
  String username = null;

  String email = null;

  String fullname = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String password = null;

  UserCreate();

  @override
  String toString() {
    return 'UserCreate[username=$username, email=$email, fullname=$fullname, createdAt=$createdAt, updatedAt=$updatedAt, password=$password, ]';
  }

  UserCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    email = json['email'];
    fullname = json['fullname'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'fullname': fullname,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'password': password
     };
  }

  static List<UserCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserCreate>() : json.map((value) => new UserCreate.fromJson(value)).toList();
  }

  static Map<String, UserCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserCreate.fromJson(value));
    }
    return map;
  }
}
