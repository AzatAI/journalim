part of swagger.api;

class PageLanguageCreate {
  
  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  int pageId = null;

  int languageId = null;

  PageLanguageCreate();

  @override
  String toString() {
    return 'PageLanguageCreate[title=$title, description=$description, keywords=$keywords, content=$content, pageId=$pageId, languageId=$languageId, ]';
  }

  PageLanguageCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    content = json['content'];
    pageId = json['page_id'];
    languageId = json['language_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'keywords': keywords,
      'content': content,
      'page_id': pageId,
      'language_id': languageId
     };
  }

  static List<PageLanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageLanguageCreate>() : json.map((value) => new PageLanguageCreate.fromJson(value)).toList();
  }

  static Map<String, PageLanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageLanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageLanguageCreate.fromJson(value));
    }
    return map;
  }
}
