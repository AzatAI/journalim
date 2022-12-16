part of swagger.api;

class MediaRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String name = null;

  String path = null;

  String contentType = null;

  String description = null;

  String accessUrl = null;

  String accessType = null;

  int id = null;

  MediaRead();

  @override
  String toString() {
    return 'MediaRead[createdAt=$createdAt, updatedAt=$updatedAt, name=$name, path=$path, contentType=$contentType, description=$description, accessUrl=$accessUrl, accessType=$accessType, id=$id, ]';
  }

  MediaRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    name = json['name'];
    path = json['path'];
    contentType = json['content_type'];
    description = json['description'];
    accessUrl = json['access_url'];
    accessType = json['access_type'];
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
      'id': id
     };
  }

  static List<MediaRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<MediaRead>() : json.map((value) => new MediaRead.fromJson(value)).toList();
  }

  static Map<String, MediaRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MediaRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MediaRead.fromJson(value));
    }
    return map;
  }
}
