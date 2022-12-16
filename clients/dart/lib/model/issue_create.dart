part of swagger.api;

class IssueCreate {
  
  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  int publicationId = null;

  IssueCreate();

  @override
  String toString() {
    return 'IssueCreate[title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, publicationId=$publicationId, ]';
  }

  IssueCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    version = json['version'];
    author = json['author'];
    image = json['image'];
    keywords = json['keywords'];
    description = json['description'];
    longDescription = json['long_description'];
    publicationId = json['publication_id'];
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
      'publication_id': publicationId
     };
  }

  static List<IssueCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueCreate>() : json.map((value) => new IssueCreate.fromJson(value)).toList();
  }

  static Map<String, IssueCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueCreate.fromJson(value));
    }
    return map;
  }
}
