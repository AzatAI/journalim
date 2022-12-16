part of swagger.api;

class PublicationLanguageUpdate {
  
  String title = null;

  String description = null;

  String image = null;

  String keywords = null;

  String longDescription = null;

  PublicationLanguageUpdate();

  @override
  String toString() {
    return 'PublicationLanguageUpdate[title=$title, description=$description, image=$image, keywords=$keywords, longDescription=$longDescription, ]';
  }

  PublicationLanguageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    image = json['image'];
    keywords = json['keywords'];
    longDescription = json['long_description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'image': image,
      'keywords': keywords,
      'long_description': longDescription
     };
  }

  static List<PublicationLanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<PublicationLanguageUpdate>() : json.map((value) => new PublicationLanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, PublicationLanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublicationLanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PublicationLanguageUpdate.fromJson(value));
    }
    return map;
  }
}
