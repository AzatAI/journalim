part of swagger.api;

class IssueLanguageCreate {
  
  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  int issueId = null;

  int languageId = null;

  IssueLanguageCreate();

  @override
  String toString() {
    return 'IssueLanguageCreate[title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, issueId=$issueId, languageId=$languageId, ]';
  }

  IssueLanguageCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    version = json['version'];
    author = json['author'];
    image = json['image'];
    keywords = json['keywords'];
    description = json['description'];
    longDescription = json['long_description'];
    issueId = json['issue_id'];
    languageId = json['language_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'version': version,
      'author': author,
      'image': image,
      'keywords': keywords,
      'description': description,
      'long_description': longDescription,
      'issue_id': issueId,
      'language_id': languageId
     };
  }

  static List<IssueLanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueLanguageCreate>() : json.map((value) => new IssueLanguageCreate.fromJson(value)).toList();
  }

  static Map<String, IssueLanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueLanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueLanguageCreate.fromJson(value));
    }
    return map;
  }
}
