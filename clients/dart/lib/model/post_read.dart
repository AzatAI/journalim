part of swagger.api;

class PostRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String keywords = null;

  String author = null;

  String featuredImage = null;

  String content = null;
/* A Post must belongs to one of the site. */
  int siteId = null;

  int id = null;

  PostRead();

  @override
  String toString() {
    return 'PostRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, keywords=$keywords, author=$author, featuredImage=$featuredImage, content=$content, siteId=$siteId, id=$id, ]';
  }

  PostRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    author = json['author'];
    featuredImage = json['featured_image'];
    content = json['content'];
    siteId = json['site_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'keywords': keywords,
      'author': author,
      'featured_image': featuredImage,
      'content': content,
      'site_id': siteId,
      'id': id
     };
  }

  static List<PostRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostRead>() : json.map((value) => new PostRead.fromJson(value)).toList();
  }

  static Map<String, PostRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostRead.fromJson(value));
    }
    return map;
  }
}
