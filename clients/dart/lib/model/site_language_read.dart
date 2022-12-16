part of swagger.api;

class SiteLanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String alternativeLogo = null;

  int siteId = null;

  int languageId = null;

  int id = null;

  SiteLanguageRead();

  @override
  String toString() {
    return 'SiteLanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, alternativeLogo=$alternativeLogo, siteId=$siteId, languageId=$languageId, id=$id, ]';
  }

  SiteLanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    alternativeLogo = json['alternative_logo'];
    siteId = json['site_id'];
    languageId = json['language_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'alternative_logo': alternativeLogo,
      'site_id': siteId,
      'language_id': languageId,
      'id': id
     };
  }

  static List<SiteLanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteLanguageRead>() : json.map((value) => new SiteLanguageRead.fromJson(value)).toList();
  }

  static Map<String, SiteLanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteLanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteLanguageRead.fromJson(value));
    }
    return map;
  }
}
