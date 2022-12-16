part of swagger.api;

class LanguageCreate {
  
  String code = null;

  String nameLocal = null;

  String nameGlobal = null;

  LanguageCreate();

  @override
  String toString() {
    return 'LanguageCreate[code=$code, nameLocal=$nameLocal, nameGlobal=$nameGlobal, ]';
  }

  LanguageCreate.fromJson(Map<String, dynamic> json) {
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

  static List<LanguageCreate> listFromJson(List<dynamic> json) {
    return json == null ? new List<LanguageCreate>() : json.map((value) => new LanguageCreate.fromJson(value)).toList();
  }

  static Map<String, LanguageCreate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LanguageCreate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LanguageCreate.fromJson(value));
    }
    return map;
  }
}
