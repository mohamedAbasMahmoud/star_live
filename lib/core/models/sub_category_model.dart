
class SubCategoryModel {
  int id;
  String name;
  String slug;
  int parent;
  String description;
  Display display;
  dynamic image;
  int menuOrder;
  int count;
  Links links;

  SubCategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.parent,
    required this.description,
    required this.display,
    required this.image,
    required this.menuOrder,
    required this.count,
    required this.links,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      SubCategoryModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        parent: json["parent"],
        description: json["description"],
        display: displayValues.map[json["display"]]!,
        image: json["image"],
        menuOrder: json["menu_order"],
        count: json["count"],
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "parent": parent,
        "description": description,
        "display": displayValues.reverse[display],
        "image": image,
        "menu_order": menuOrder,
        "count": count,
        "_links": links.toJson(),
      };
}

enum Display { DEFAULT }

final displayValues = EnumValues({"default": Display.DEFAULT});

class Links {
  List<Self> self;
  List<Collection> collection;
  List<Collection> up;

  Links({
    required this.self,
    required this.collection,
    required this.up,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<Self>.from(json["self"].map((x) => Self.fromJson(x))),
        collection: List<Collection>.from(
            json["collection"].map((x) => Collection.fromJson(x))),
        up: List<Collection>.from(
            json["up"].map((x) => Collection.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
        "up": List<dynamic>.from(up.map((x) => x.toJson())),
      };
}

class Collection {
  String href;

  Collection({
    required this.href,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class Self {
  String href;
  TargetHints targetHints;

  Self({
    required this.href,
    required this.targetHints,
  });

  factory Self.fromJson(Map<String, dynamic> json) => Self(
        href: json["href"],
        targetHints: TargetHints.fromJson(json["targetHints"]),
      );

  Map<String, dynamic> toJson() => {
        "href": href,
        "targetHints": targetHints.toJson(),
      };
}

class TargetHints {
  List<Allow> allow;

  TargetHints({
    required this.allow,
  });

  factory TargetHints.fromJson(Map<String, dynamic> json) => TargetHints(
        allow: List<Allow>.from(json["allow"].map((x) => allowValues.map[x]!)),
      );

  Map<String, dynamic> toJson() => {
        "allow": List<dynamic>.from(allow.map((x) => allowValues.reverse[x])),
      };
}

enum Allow { DELETE, GET, PATCH, POST, PUT }

final allowValues = EnumValues({
  "DELETE": Allow.DELETE,
  "GET": Allow.GET,
  "PATCH": Allow.PATCH,
  "POST": Allow.POST,
  "PUT": Allow.PUT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
