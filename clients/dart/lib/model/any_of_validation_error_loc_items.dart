part of swagger.api;

class AnyOfValidationErrorLocItems {
  
  AnyOfValidationErrorLocItems();

  @override
  String toString() {
    return 'AnyOfValidationErrorLocItems[]';
  }

  AnyOfValidationErrorLocItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AnyOfValidationErrorLocItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnyOfValidationErrorLocItems>() : json.map((value) => new AnyOfValidationErrorLocItems.fromJson(value)).toList();
  }

  static Map<String, AnyOfValidationErrorLocItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnyOfValidationErrorLocItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnyOfValidationErrorLocItems.fromJson(value));
    }
    return map;
  }
}
