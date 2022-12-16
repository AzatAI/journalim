part of swagger.api;

class LanguageUpdate {
  
  String code = null;

  String nameLocal = null;

  String nameGlobal = null;

  LanguageUpdate();

  @override
  String toString() {
    return 'LanguageUpdate[code=$code, nameLocal=$nameLocal, nameGlobal=$nameGlobal, ]';
  }

  LanguageUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    nameLocal = json['name_local'];
    nameGlobal = json['name_global'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name_local': nameLocal,
      'name_global': nameGlobal
     };
  }

  static List<LanguageUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<LanguageUpdate>() : json.map((value) => new LanguageUpdate.fromJson(value)).toList();
  }

  static Map<String, LanguageUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LanguageUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LanguageUpdate.fromJson(value));
    }
    return map;
  }
}
