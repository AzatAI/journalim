part of swagger.api;

class PostLanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  int postId = null;

  int languageId = null;

  int id = null;

  PostLanguageRead();

  @override
  String toString() {
    return 'PostLanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, keywords=$keywords, content=$content, postId=$postId, languageId=$languageId, id=$id, ]';
  }

  PostLanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    content = json['content'];
    postId = json['post_id'];
    languageId = json['language_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'keywords': keywords,
      'content': content,
      'post_id': postId,
      'language_id': languageId,
      'id': id
     };
  }

  static List<PostLanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostLanguageRead>() : json.map((value) => new PostLanguageRead.fromJson(value)).toList();
  }

  static Map<String, PostLanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostLanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostLanguageRead.fromJson(value));
    }
    return map;
  }
}
