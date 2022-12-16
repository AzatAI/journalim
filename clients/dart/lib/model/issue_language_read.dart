part of swagger.api;

class IssueLanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  int issueId = null;

  int languageId = null;

  int id = null;

  IssueLanguageRead();

  @override
  String toString() {
    return 'IssueLanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, issueId=$issueId, languageId=$languageId, id=$id, ]';
  }

  IssueLanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    version = json['version'];
    author = json['author'];
    image = json['image'];
    keywords = json['keywords'];
    description = json['description'];
    longDescription = json['long_description'];
    issueId = json['issue_id'];
    languageId = json['language_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'version': version,
      'author': author,
      'image': image,
      'keywords': keywords,
      'description': description,
      'long_description': longDescription,
      'issue_id': issueId,
      'language_id': languageId,
      'id': id
     };
  }

  static List<IssueLanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueLanguageRead>() : json.map((value) => new IssueLanguageRead.fromJson(value)).toList();
  }

  static Map<String, IssueLanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueLanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueLanguageRead.fromJson(value));
    }
    return map;
  }
}
