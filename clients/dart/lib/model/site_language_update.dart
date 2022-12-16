part of swagger.api;

class SiteLanguageUpdate {
  
  String title = null;

  String description = null;

  String alternativeLogo = null;

  int siteId = null;

  int languageId = null;

  SiteLanguageUpdate();

  @override
  String toString() {
    return 'SiteLanguageUpdate[title=$title, description=$description, alternativeLogo=$alternativeLogo, siteId=$siteId, languageId=$languageId, ]';
  }

  SiteLanguageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    alternativeLogo = json['alternative_logo'];
    siteId = json['site_id'];
    languageId = json['language_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'alternative_logo': alternativeLogo,
      'site_id': siteId,
      'language_id': languageId
     };
  }

  static List<SiteLanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteLanguageUpdate>() : json.map((value) => new SiteLanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, SiteLanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteLanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteLanguageUpdate.fromJson(value));
    }
    return map;
  }
}
