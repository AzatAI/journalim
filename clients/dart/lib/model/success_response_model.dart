part of swagger.api;

class SuccessResponseModel {
  
  String message = null;

  SuccessResponseModel();

  @override
  String toString() {
    return 'SuccessResponseModel[message=$message, ]';
  }

  SuccessResponseModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message
     };
  }

  static List<SuccessResponseModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<SuccessResponseModel>() : json.map((value) => new SuccessResponseModel.fromJson(value)).toList();
  }

  static Map<String, SuccessResponseModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SuccessResponseModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SuccessResponseModel.fromJson(value));
    }
    return map;
  }
}
