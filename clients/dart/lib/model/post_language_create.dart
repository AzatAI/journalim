part of swagger.api;

class PostLanguageCreate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  int postId = null;

  int languageId = null;

  PostLanguageCreate();

  @override
  String toString() {
    return 'PostLanguageCreate[title=$title, description=$description, keywords=$keywords, content=$content, postId=$postId, languageId=$languageId, ]';
  }

  PostLanguageCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    content = json['content'];
    postId = json['post_id'];
    languageId = json['language_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'keywords': keywords,
      'content': content,
      'post_id': postId,
      'language_id': languageId
     };
  }

  static List<PostLanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostLanguageCreate>() : json.map((value) => new PostLanguageCreate.fromJson(value)).toList();
  }

  static Map<String, PostLanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostLanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostLanguageCreate.fromJson(value));
    }
    return map;
  }
}
