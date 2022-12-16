part of swagger.api;

class PageUpdate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String author = null;

  String featuredImage = null;

  String content = null;

  PageUpdate();

  @override
  String toString() {
    return 'PageUpdate[title=$title, description=$description, keywords=$keywords, author=$author, featuredImage=$featuredImage, content=$content, ]';
  }

  PageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    author = json['author'];
    featuredImage = json['featured_image'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'keywords': keywords,
      'author': author,
      'featured_image': featuredImage,
      'content': content
     };
  }

  static List<PageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageUpdate>() : json.map((value) => new PageUpdate.fromJson(value)).toList();
  }

  static Map<String, PageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageUpdate.fromJson(value));
    }
    return map;
  }
}
