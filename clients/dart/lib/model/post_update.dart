part of swagger.api;

class PostUpdate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String author = null;

  String featuredImage = null;

  String content = null;

  PostUpdate();

  @override
  String toString() {
    return 'PostUpdate[title=$title, description=$description, keywords=$keywords, author=$author, featuredImage=$featuredImage, content=$content, ]';
  }

  PostUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<PostUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostUpdate>() : json.map((value) => new PostUpdate.fromJson(value)).toList();
  }

  static Map<String, PostUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostUpdate.fromJson(value));
    }
    return map;
  }
}
