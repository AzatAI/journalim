part of swagger.api;

class ErrorResponseModel {
  
  String message = null;

  ErrorResponseModel();

  @override
  String toString() {
    return 'ErrorResponseModel[message=$message, ]';
  }

  ErrorResponseModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message
     };
  }

  static List<ErrorResponseModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorResponseModel>() : json.map((value) => new ErrorResponseModel.fromJson(value)).toList();
  }

  static Map<String, ErrorResponseModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorResponseModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorResponseModel.fromJson(value));
    }
    return map;
  }
}
