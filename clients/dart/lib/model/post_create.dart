part of swagger.api;

class PostCreate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String author = null;

  String featuredImage = null;

  String content = null;
/* A Post must belongs to one of the site. */
  int siteId = null;

  PostCreate();

  @override
  String toString() {
    return 'PostCreate[title=$title, description=$description, keywords=$keywords, author=$author, featuredImage=$featuredImage, content=$content, siteId=$siteId, ]';
  }

  PostCreate.fromJson(Map<String, dynamic> json) {
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

  static List<PostCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostCreate>() : json.map((value) => new PostCreate.fromJson(value)).toList();
  }

  static Map<String, PostCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostCreate.fromJson(value));
    }
    return map;
  }
}
