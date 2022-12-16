part of swagger.api;

class PageCreate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String author = null;

  String featuredImage = null;

  String content = null;
/* A Page must belongs to one of the site. */
  int siteId = null;

  PageCreate();

  @override
  String toString() {
    return 'PageCreate[title=$title, description=$description, keywords=$keywords, author=$author, featuredImage=$featuredImage, content=$content, siteId=$siteId, ]';
  }

  PageCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    author = json['author'];
    featuredImage = json['featured_image'];
    content = json['content'];
    siteId = json['site_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'keywords': keywords,
      'author': author,
      'featured_image': featuredImage,
      'content': content,
      'site_id': siteId
     };
  }

  static List<PageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageCreate>() : json.map((value) => new PageCreate.fromJson(value)).toList();
  }

  static Map<String, PageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageCreate.fromJson(value));
    }
    return map;
  }
}
