part of swagger.api;

class UserUpdate {
  
  String fullname = null;

  String email = null;

  bool isStaff = false;

  bool isAdmin = false;

  UserUpdate();

  @override
  String toString() {
    return 'UserUpdate[fullname=$fullname, email=$email, isStaff=$isStaff, isAdmin=$isAdmin, ]';
  }

  UserUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fullname = json['fullname'];
    email = json['email'];
    isStaff = json['is_staff'];
    isAdmin = json['is_admin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'fullname': fullname,
      'email': email,
      'is_staff': isStaff,
      'is_admin': isAdmin
     };
  }

  static List<UserUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserUpdate>() : json.map((value) => new UserUpdate.fromJson(value)).toList();
  }

  static Map<String, UserUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserUpdate.fromJson(value));
    }
    return map;
  }
}
