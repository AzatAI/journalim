part of swagger.api;

class SiteCreate {
  
  String title = null;

  String description = null;

  String logo = null;

  String siteUrl = null;

  SiteCreate();

  @override
  String toString() {
    return 'SiteCreate[title=$title, description=$description, logo=$logo, siteUrl=$siteUrl, ]';
  }

  SiteCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    logo = json['logo'];
    siteUrl = json['site_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'logo': logo,
      'site_url': siteUrl
     };
  }

  static List<SiteCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<SiteCreate>() : json.map((value) => new SiteCreate.fromJson(value)).toList();
  }

  static Map<String, SiteCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SiteCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SiteCreate.fromJson(value));
    }
    return map;
  }
}
