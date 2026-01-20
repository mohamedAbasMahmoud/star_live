class ReviewsModel {
  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  int productId;
  String productName;
  String productPermalink;
  String status;
  String reviewer;
  String reviewerEmail;
  String review;
  int rating;
  bool verified;
  Map<String, String> reviewerAvatarUrls;
  Links links;

  ReviewsModel({
    required this.id,
    required this.dateCreated,
    required this.dateCreatedGmt,
    required this.productId,
    required this.productName,
    required this.productPermalink,
    required this.status,
    required this.reviewer,
    required this.reviewerEmail,
    required this.review,
    required this.rating,
    required this.verified,
    required this.reviewerAvatarUrls,
    required this.links,
  });

  factory ReviewsModel.fromJson(Map<String, dynamic> json) => ReviewsModel(
        id: json["id"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        productId: json["product_id"],
        productName: json["product_name"],
        productPermalink: json["product_permalink"],
        status: json["status"],
        reviewer: json["reviewer"],
        reviewerEmail: json["reviewer_email"],
        review: json["review"],
        rating: json["rating"],
        verified: json["verified"],
        reviewerAvatarUrls: Map.from(json["reviewer_avatar_urls"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date_created": dateCreated.toIso8601String(),
        "date_created_gmt": dateCreatedGmt.toIso8601String(),
        "product_id": productId,
        "product_name": productName,
        "product_permalink": productPermalink,
        "status": status,
        "reviewer": reviewer,
        "reviewer_email": reviewerEmail,
        "review": review,
        "rating": rating,
        "verified": verified,
        "reviewer_avatar_urls": Map.from(reviewerAvatarUrls)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "_links": links.toJson(),
      };
}

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
  List<String> allow;

  TargetHints({
    required this.allow,
  });

  factory TargetHints.fromJson(Map<String, dynamic> json) => TargetHints(
        allow: List<String>.from(json["allow"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "allow": List<dynamic>.from(allow.map((x) => x)),
      };
}
