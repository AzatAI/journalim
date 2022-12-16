part of swagger.api;

class GenericFileUploadResponse {
  
  String name = null;

  String contentType = null;

  AnyOfGenericFileUploadResponsePath path = null;

  String accessUrl = null;

  String description = null;

  String accessType = null;

  GenericFileUploadResponse();

  @override
  String toString() {
    return 'GenericFileUploadResponse[name=$name, contentType=$contentType, path=$path, accessUrl=$accessUrl, description=$description, accessType=$accessType, ]';
  }

  GenericFileUploadResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    contentType = json['content_type'];
    path = new AnyOfGenericFileUploadResponsePath.fromJson(json['path']);
    accessUrl = json['access_url'];
    description = json['description'];
    accessType = json['access_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'content_type': contentType,
      'path': path,
      'access_url': accessUrl,
      'description': description,
      'access_type': accessType
     };
  }

  static List<GenericFileUploadResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericFileUploadResponse>() : json.map((value) => new GenericFileUploadResponse.fromJson(value)).toList();
  }

  static Map<String, GenericFileUploadResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericFileUploadResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericFileUploadResponse.fromJson(value));
    }
    return map;
  }
}
