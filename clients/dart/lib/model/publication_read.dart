part of swagger.api;

class PublicationRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String title = null;

  String description = null;

  String publisher = null;

  String issn = null;

  String isbn = null;

  String editorInChief = null;

  String editorOthers = null;

  String contactPerson = null;

  String contactEmail = null;

  String contactNumber = null;

  String contactAddress = null;

  String subscriptionFee = null;

  String image = null;

  String keywords = null;
/* This can be a very long html or markdown content */
  String longDescription = null;

  int id = null;

  PublicationRead();

  @override
  String toString() {
    return 'PublicationRead[createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, publisher=$publisher, issn=$issn, isbn=$isbn, editorInChief=$editorInChief, editorOthers=$editorOthers, contactPerson=$contactPerson, contactEmail=$contactEmail, contactNumber=$contactNumber, contactAddress=$contactAddress, subscriptionFee=$subscriptionFee, image=$image, keywords=$keywords, longDescription=$longDescription, id=$id, ]';
  }

  PublicationRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    title = json['title'];
    description = json['description'];
    publisher = json['publisher'];
    issn = json['issn'];
    isbn = json['isbn'];
    editorInChief = json['editor_in_chief'];
    editorOthers = json['editor_others'];
    contactPerson = json['contact_person'];
    contactEmail = json['contact_email'];
    contactNumber = json['contact_number'];
    contactAddress = json['contact_address'];
    subscriptionFee = json['subscription_fee'];
    image = json['image'];
    keywords = json['keywords'];
    longDescription = json['long_description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'title': title,
      'description': description,
      'publisher': publisher,
      'issn': issn,
      'isbn': isbn,
      'editor_in_chief': editorInChief,
      'editor_others': editorOthers,
      'contact_person': contactPerson,
      'contact_email': contactEmail,
      'contact_number': contactNumber,
      'contact_address': contactAddress,
      'subscription_fee': subscriptionFee,
      'image': image,
      'keywords': keywords,
      'long_description': longDescription,
      'id': id
     };
  }

  static List<PublicationRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PublicationRead>() : json.map((value) => new PublicationRead.fromJson(value)).toList();
  }

  static Map<String, PublicationRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PublicationRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PublicationRead.fromJson(value));
    }
    return map;
  }
}
