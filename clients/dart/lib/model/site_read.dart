part of swagger.api;

class SiteRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String logo = null;

  String siteUrl = null;

  int id = null;

  SiteRead();

  @override
  String toString() {
    return 'SiteRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, logo=$logo, siteUrl=$siteUrl, id=$id, ]';
  }

  SiteRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    logo = json['logo'];
    siteUrl = json['site_url'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'logo': logo,
      'site_url': siteUrl,
      'id': id
     };
  }

  static List<SiteRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteRead>() : json.map((value) => new SiteRead.fromJson(value)).toList();
  }

  static Map<String, SiteRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteRead.fromJson(value));
    }
    return map;
  }
}
