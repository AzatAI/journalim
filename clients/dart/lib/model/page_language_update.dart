part of swagger.api;

class PageLanguageUpdate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  PageLanguageUpdate();

  @override
  String toString() {
    return 'PageLanguageUpdate[title=$title, description=$description, keywords=$keywords, content=$content, ]';
  }

  PageLanguageUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<PageLanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageLanguageUpdate>() : json.map((value) => new PageLanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, PageLanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageLanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageLanguageUpdate.fromJson(value));
    }
    return map;
  }
}
