part of swagger.api;

class IssueUpdate {
  
  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  IssueUpdate();

  @override
  String toString() {
    return 'IssueUpdate[title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, ]';
  }

  IssueUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<IssueUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueUpdate>() : json.map((value) => new IssueUpdate.fromJson(value)).toList();
  }

  static Map<String, IssueUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueUpdate.fromJson(value));
    }
    return map;
  }
}
