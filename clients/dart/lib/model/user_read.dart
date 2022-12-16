part of swagger.api;

class UserRead {
  
  String username = null;

  String email = null;

  String fullname = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  int id = null;

  bool isStaff = false;

  bool isAdmin = false;

  UserRead();

  @override
  String toString() {
    return 'UserRead[username=$username, email=$email, fullname=$fullname, createdAt=$createdAt, updatedAt=$updatedAt, id=$id, isStaff=$isStaff, isAdmin=$isAdmin, ]';
  }

  UserRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username = json['username'];
    email = json['email'];
    fullname = json['fullname'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    id = json['id'];
    isStaff = json['is_staff'];
    isAdmin = json['is_admin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'fullname': fullname,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'id': id,
      'is_staff': isStaff,
      'is_admin': isAdmin
     };
  }

  static List<UserRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserRead>() : json.map((value) => new UserRead.fromJson(value)).toList();
  }

  static Map<String, UserRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserRead.fromJson(value));
    }
    return map;
  }
}
