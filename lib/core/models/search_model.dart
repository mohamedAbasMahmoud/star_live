// class SearchModel {
//   final String status;
//   final List<SearchDatum> data;

//   SearchModel({required this.status, required this.data});

//   factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
//     status: json["status"],
//     data: List<SearchDatum>.from(
//       json["data"].map((x) => SearchDatum.fromJson(x)),
//     ),
//   );

//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }

// class SearchDatum {
//   final String id;
//   final String categoryId;
//   final String nameEn;
//   final String nameAr;
//   final String image;
//   final String price;
//   final String dryPrice;
//   final String dryB2BPrice;
//   final String washPrice;
//   final String washB2BPrice;
//   final String fixPrice;
//   final String fixB2BPrice;
//   final String ironPrice;
//   final String ironB2BPrice;
//   final String washAndIronPrice;
//   final String washAndIronB2BPrice;
//   final String deepCleaningPrice;
//   final String deepCleaningB2BPrice;
//   final String laundryPrice;
//   final String discount;
//   final String isActive;
//   final DateTime createdAt;
//   final DateTime updatedAt;

//   SearchDatum({
//     required this.id,
//     required this.categoryId,
//     required this.nameEn,
//     required this.nameAr,
//     required this.image,
//     required this.price,
//     required this.dryPrice,
//     required this.dryB2BPrice,
//     required this.washPrice,
//     required this.washB2BPrice,
//     required this.fixPrice,
//     required this.fixB2BPrice,
//     required this.ironPrice,
//     required this.ironB2BPrice,
//     required this.washAndIronPrice,
//     required this.washAndIronB2BPrice,
//     required this.deepCleaningPrice,
//     required this.deepCleaningB2BPrice,
//     required this.laundryPrice,
//     required this.discount,
//     required this.isActive,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory SearchDatum.fromJson(Map<String, dynamic> json) => SearchDatum(
//     id: json["id"],
//     categoryId: json["category_id"],
//     nameEn: json["name_en"],
//     nameAr: json["name_ar"],
//     image: json["image"],
//     price: json["price"],
//     dryPrice: json["dry_price"],
//     dryB2BPrice: json["dry_b2b_price"],
//     washPrice: json["wash_price"],
//     washB2BPrice: json["wash_b2b_price"],
//     fixPrice: json["fix_price"],
//     fixB2BPrice: json["fix_b2b_price"],
//     ironPrice: json["iron_price"],
//     ironB2BPrice: json["iron_b2b_price"],
//     washAndIronPrice: json["wash_and_iron_price"],
//     washAndIronB2BPrice: json["wash_and_iron_b2b_price"],
//     deepCleaningPrice: json["deep_cleaning_price"],
//     deepCleaningB2BPrice: json["deep_cleaning_b2b_price"],
//     laundryPrice: json["laundry_price"],
//     discount: json["discount"],
//     isActive: json["is_active"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "category_id": categoryId,
//     "name_en": nameEn,
//     "name_ar": nameAr,
//     "image": image,
//     "price": price,
//     "dry_price": dryPrice,
//     "dry_b2b_price": dryB2BPrice,
//     "wash_price": washPrice,
//     "wash_b2b_price": washB2BPrice,
//     "fix_price": fixPrice,
//     "fix_b2b_price": fixB2BPrice,
//     "iron_price": ironPrice,
//     "iron_b2b_price": ironB2BPrice,
//     "wash_and_iron_price": washAndIronPrice,
//     "wash_and_iron_b2b_price": washAndIronB2BPrice,
//     "deep_cleaning_price": deepCleaningPrice,
//     "deep_cleaning_b2b_price": deepCleaningB2BPrice,
//     "laundry_price": laundryPrice,
//     "discount": discount,
//     "is_active": isActive,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }
