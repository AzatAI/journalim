part of swagger.api;

class PostLanguageUpdate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  PostLanguageUpdate();

  @override
  String toString() {
    return 'PostLanguageUpdate[title=$title, description=$description, keywords=$keywords, content=$content, ]';
  }

  PostLanguageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'keywords': keywords,
      'content': content
     };
  }

  static List<PostLanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PostLanguageUpdate>() : json.map((value) => new PostLanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, PostLanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostLanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PostLanguageUpdate.fromJson(value));
    }
    return map;
  }
}
