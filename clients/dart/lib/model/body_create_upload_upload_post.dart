part of swagger.api;

class BodyCreateUploadUploadPost {
  
  String file = null;

  BodyCreateUploadUploadPost();

  @override
  String toString() {
    return 'BodyCreateUploadUploadPost[file=$file, ]';
  }

  BodyCreateUploadUploadPost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<BodyCreateUploadUploadPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<BodyCreateUploadUploadPost>() : json.map((value) => new BodyCreateUploadUploadPost.fromJson(value)).toList();
  }

  static Map<String, BodyCreateUploadUploadPost> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BodyCreateUploadUploadPost>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BodyCreateUploadUploadPost.fromJson(value));
    }
    return map;
  }
}
