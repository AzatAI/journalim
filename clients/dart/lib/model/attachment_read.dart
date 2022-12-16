part of swagger.api;

class AttachmentRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String name = null;

  String path = null;

  String contentType = null;

  String description = null;

  String accessUrl = null;

  String accessType = null;

  int issueId = null;

  int id = null;

  AttachmentRead();

  @override
  String toString() {
    return 'AttachmentRead[createdAt=$createdAt, updatedAt=$updatedAt, name=$name, path=$path, contentType=$contentType, description=$description, accessUrl=$accessUrl, accessType=$accessType, issueId=$issueId, id=$id, ]';
  }

  AttachmentRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    name = json['name'];
    path = json['path'];
    contentType = json['content_type'];
    description = json['description'];
    accessUrl = json['access_url'];
    accessType = json['access_type'];
    issueId = json['issue_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'name': name,
      'path': path,
      'content_type': contentType,
      'description': description,
      'access_url': accessUrl,
      'access_type': accessType,
      'issue_id': issueId,
      'id': id
     };
  }

  static List<AttachmentRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<AttachmentRead>() : json.map((value) => new AttachmentRead.fromJson(value)).toList();
  }

  static Map<String, AttachmentRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttachmentRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AttachmentRead.fromJson(value));
    }
    return map;
  }
}
