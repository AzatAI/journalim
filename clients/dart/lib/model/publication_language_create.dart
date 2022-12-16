part of swagger.api;

class PublicationLanguageCreate {
  
  String title = null;

  String description = null;

  String publisher = null;

  String image = null;

  String keywords = null;
/* This can be a very long html or markdown content */
  String longDescription = null;

  int publicationId = null;

  int languageId = null;

  PublicationLanguageCreate();

  @override
  String toString() {
    return 'PublicationLanguageCreate[title=$title, description=$description, publisher=$publisher, image=$image, keywords=$keywords, longDescription=$longDescription, publicationId=$publicationId, languageId=$languageId, ]';
  }

  PublicationLanguageCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    publisher = json['publisher'];
    image = json['image'];
    keywords = json['keywords'];
    longDescription = json['long_description'];
    publicationId = json['publication_id'];
    languageId = json['language_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'publisher': publisher,
      'image': image,
      'keywords': keywords,
      'long_description': longDescription,
      'publication_id': publicationId,
      'language_id': languageId
     };
  }

  static List<PublicationLanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PublicationLanguageCreate>() : json.map((value) => new PublicationLanguageCreate.fromJson(value)).toList();
  }

  static Map<String, PublicationLanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublicationLanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PublicationLanguageCreate.fromJson(value));
    }
    return map;
  }
}
