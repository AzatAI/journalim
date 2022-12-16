part of swagger.api;

class PublicationLanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String publisher = null;

  String image = null;

  String keywords = null;
/* This can be a very long html or markdown content */
  String longDescription = null;

  int publicationId = null;

  int languageId = null;

  int id = null;

  PublicationLanguageRead();

  @override
  String toString() {
    return 'PublicationLanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, publisher=$publisher, image=$image, keywords=$keywords, longDescription=$longDescription, publicationId=$publicationId, languageId=$languageId, id=$id, ]';
  }

  PublicationLanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    publisher = json['publisher'];
    image = json['image'];
    keywords = json['keywords'];
    longDescription = json['long_description'];
    publicationId = json['publication_id'];
    languageId = json['language_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'publisher': publisher,
      'image': image,
      'keywords': keywords,
      'long_description': longDescription,
      'publication_id': publicationId,
      'language_id': languageId,
      'id': id
     };
  }

  static List<PublicationLanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PublicationLanguageRead>() : json.map((value) => new PublicationLanguageRead.fromJson(value)).toList();
  }

  static Map<String, PublicationLanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublicationLanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PublicationLanguageRead.fromJson(value));
    }
    return map;
  }
}
