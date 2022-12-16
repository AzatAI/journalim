part of swagger.api;

class AttachmentCreate {
  
  String name = null;

  String path = null;

  String contentType = null;

  String description = null;

  String accessUrl = null;

  String accessType = null;

  int issueId = null;

  AttachmentCreate();

  @override
  String toString() {
    return 'AttachmentCreate[name=$name, path=$path, contentType=$contentType, description=$description, accessUrl=$accessUrl, accessType=$accessType, issueId=$issueId, ]';
  }

  AttachmentCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    path = json['path'];
    contentType = json['content_type'];
    description = json['description'];
    accessUrl = json['access_url'];
    accessType = json['access_type'];
    issueId = json['issue_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'path': path,
      'content_type': contentType,
      'description': description,
      'access_url': accessUrl,
      'access_type': accessType,
      'issue_id': issueId
     };
  }

  static List<AttachmentCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<AttachmentCreate>() : json.map((value) => new AttachmentCreate.fromJson(value)).toList();
  }

  static Map<String, AttachmentCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttachmentCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AttachmentCreate.fromJson(value));
    }
    return map;
  }
}
