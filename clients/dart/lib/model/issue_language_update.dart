part of swagger.api;

class IssueLanguageUpdate {
  
  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  IssueLanguageUpdate();

  @override
  String toString() {
    return 'IssueLanguageUpdate[title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, ]';
  }

  IssueLanguageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    version = json['version'];
    author = json['author'];
    image = json['image'];
    keywords = json['keywords'];
    description = json['description'];
    longDescription = json['long_description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'version': version,
      'author': author,
      'image': image,
      'keywords': keywords,
      'description': description,
      'long_description': longDescription
     };
  }

  static List<IssueLanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueLanguageUpdate>() : json.map((value) => new IssueLanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, IssueLanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueLanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueLanguageUpdate.fromJson(value));
    }
    return map;
  }
}
