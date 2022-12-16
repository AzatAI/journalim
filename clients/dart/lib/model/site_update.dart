part of swagger.api;

class SiteUpdate {
  
  String title = null;

  String description = null;

  String logo = null;

  String siteUrl = null;

  String defaultTitle = null;

  String defaultDescription = null;

  SiteUpdate();

  @override
  String toString() {
    return 'SiteUpdate[title=$title, description=$description, logo=$logo, siteUrl=$siteUrl, defaultTitle=$defaultTitle, defaultDescription=$defaultDescription, ]';
  }

  SiteUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    logo = json['logo'];
    siteUrl = json['site_url'];
    defaultTitle = json['default_title'];
    defaultDescription = json['default_description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'logo': logo,
      'site_url': siteUrl,
      'default_title': defaultTitle,
      'default_description': defaultDescription
     };
  }

  static List<SiteUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteUpdate>() : json.map((value) => new SiteUpdate.fromJson(value)).toList();
  }

  static Map<String, SiteUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteUpdate.fromJson(value));
    }
    return map;
  }
}
