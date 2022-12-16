part of swagger.api;

class ValidationError {
  
  List<AnyOfValidationErrorLocItems> loc = [];

  String msg = null;

  String type = null;

  ValidationError();

  @override
  String toString() {
    return 'ValidationError[loc=$loc, msg=$msg, type=$type, ]';
  }

  ValidationError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    loc = Object.listFromJson(json['loc']);
    msg = json['msg'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'loc': loc,
      'msg': msg,
      'type': type
     };
  }

  static List<ValidationError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidationError>() : json.map((value) => new ValidationError.fromJson(value)).toList();
  }

  static Map<String, ValidationError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidationError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidationError.fromJson(value));
    }
    return map;
  }
}
