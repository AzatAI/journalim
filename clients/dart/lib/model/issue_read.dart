part of swagger.api;

class IssueRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String version = null;

  String author = null;

  String image = null;

  String keywords = null;

  String description = null;

  String longDescription = null;

  int publicationId = null;

  int id = null;

  IssueRead();

  @override
  String toString() {
    return 'IssueRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, version=$version, author=$author, image=$image, keywords=$keywords, description=$description, longDescription=$longDescription, publicationId=$publicationId, id=$id, ]';
  }

  IssueRead.fromJson(Map<String, dynamic> json) {
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
    publicationId = json['publication_id'];
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
      'publication_id': publicationId,
      'id': id
     };
  }

  static List<IssueRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueRead>() : json.map((value) => new IssueRead.fromJson(value)).toList();
  }

  static Map<String, IssueRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueRead.fromJson(value));
    }
    return map;
  }
}
