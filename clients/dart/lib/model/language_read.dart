part of swagger.api;

class LanguageRead {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String code = null;

  String nameLocal = null;

  String nameGlobal = null;

  int id = null;

  LanguageRead();

  @override
  String toString() {
    return 'LanguageRead[createdAt=$createdAt, updatedAt=$updatedAt, code=$code, nameLocal=$nameLocal, nameGlobal=$nameGlobal, id=$id, ]';
  }

  LanguageRead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    code = json['code'];
    nameLocal = json['name_local'];
    nameGlobal = json['name_global'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'code': code,
      'name_local': nameLocal,
      'name_global': nameGlobal,
      'id': id
     };
  }

  static List<LanguageRead> listFromJson(List<dynamic> json) {
    return json == null ? new List<LanguageRead>() : json.map((value) => new LanguageRead.fromJson(value)).toList();
  }

  static Map<String, LanguageRead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LanguageRead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LanguageRead.fromJson(value));
    }
    return map;
  }
}
