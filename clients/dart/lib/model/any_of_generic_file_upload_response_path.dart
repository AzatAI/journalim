part of swagger.api;

class AnyOfGenericFileUploadResponsePath {
  
  AnyOfGenericFileUploadResponsePath();

  @override
  String toString() {
    return 'AnyOfGenericFileUploadResponsePath[]';
  }

  AnyOfGenericFileUploadResponsePath.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AnyOfGenericFileUploadResponsePath> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnyOfGenericFileUploadResponsePath>() : json.map((value) => new AnyOfGenericFileUploadResponsePath.fromJson(value)).toList();
  }

  static Map<String, AnyOfGenericFileUploadResponsePath> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnyOfGenericFileUploadResponsePath>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnyOfGenericFileUploadResponsePath.fromJson(value));
    }
    return map;
  }
}
