part of swagger.api;

class MediaUpdate {
  
  String name = null;

  String description = null;

  MediaUpdate();

  @override
  String toString() {
    return 'MediaUpdate[name=$name, description=$description, ]';
  }

  MediaUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<MediaUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<MediaUpdate>() : json.map((value) => new MediaUpdate.fromJson(value)).toList();
  }

  static Map<String, MediaUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MediaUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MediaUpdate.fromJson(value));
    }
    return map;
  }
}
