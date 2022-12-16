part of swagger.api;

class SiteLanguageCreate {
  
  String title = null;

  String description = null;

  String alternativeLogo = null;

  int siteId = null;

  int languageId = null;

  SiteLanguageCreate();

  @override
  String toString() {
    return 'SiteLanguageCreate[title=$title, description=$description, alternativeLogo=$alternativeLogo, siteId=$siteId, languageId=$languageId, ]';
  }

  SiteLanguageCreate.fromJson(Map<String, dynamic> json) {
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

  static List<SiteLanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteLanguageCreate>() : json.map((value) => new SiteLanguageCreate.fromJson(value)).toList();
  }

  static Map<String, SiteLanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteLanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteLanguageCreate.fromJson(value));
    }
    return map;
  }
}
