part of swagger.api;

class PageLanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String keywords = null;

  String content = null;

  int pageId = null;

  int languageId = null;

  int id = null;

  PageLanguageRead();

  @override
  String toString() {
    return 'PageLanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, keywords=$keywords, content=$content, pageId=$pageId, languageId=$languageId, id=$id, ]';
  }

  PageLanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    keywords = json['keywords'];
    content = json['content'];
    pageId = json['page_id'];
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
      'page_id': pageId,
      'language_id': languageId,
      'id': id
     };
  }

  static List<PageLanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageLanguageRead>() : json.map((value) => new PageLanguageRead.fromJson(value)).toList();
  }

  static Map<String, PageLanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageLanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageLanguageRead.fromJson(value));
    }
    return map;
  }
}
