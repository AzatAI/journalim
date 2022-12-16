part of swagger.api;

class AttachmentUpdate {
  
  String name = null;

  String description = null;

  AttachmentUpdate();

  @override
  String toString() {
    return 'AttachmentUpdate[name=$name, description=$description, ]';
  }

  AttachmentUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description
     };
  }

  static List<AttachmentUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<AttachmentUpdate>() : json.map((value) => new AttachmentUpdate.fromJson(value)).toList();
  }

  static Map<String, AttachmentUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttachmentUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AttachmentUpdate.fromJson(value));
    }
    return map;
  }
}
