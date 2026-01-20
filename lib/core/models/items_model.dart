class ItemsModel {
  final String status;
  final String message;
  final List<ItemsDatum> data;

  ItemsModel({required this.status, required this.message, required this.data});

  factory ItemsModel.fromJson(Map<String, dynamic> json) => ItemsModel(
    status: json["status"] ?? '',
    message: json["message"] ?? '',
    data: json["data"] != null
        ? List<ItemsDatum>.from(json["data"].map((x) => ItemsDatum.fromJson(x)))
        : [],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class ItemsDatum {
  final int id;
  final String categoryId;
  final String nameEn;
  final String nameAr;
  final String image;
  final String price;
  final String dryPrice;
  final String dryB2BPrice;
  final String washPrice;
  final String washB2BPrice;
  final String fixPrice;
  final String fixB2BPrice;
  final String ironPrice;
  final String ironB2BPrice;
  final String washAndIronPrice;
  final String washAndIronB2BPrice;
  final String deepCleaningPrice;
  final String deepCleaningB2BPrice;
  final String laundryPrice;
  final String discount;
  final String isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  ItemsDatum({
    required this.id,
    required this.categoryId,
    required this.nameEn,
    required this.nameAr,
    required this.image,
    required this.price,
    required this.dryPrice,
    required this.dryB2BPrice,
    required this.washPrice,
    required this.washB2BPrice,
    required this.fixPrice,
    required this.fixB2BPrice,
    required this.ironPrice,
    required this.ironB2BPrice,
    required this.washAndIronPrice,
    required this.washAndIronB2BPrice,
    required this.deepCleaningPrice,
    required this.deepCleaningB2BPrice,
    required this.laundryPrice,
    required this.discount,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  // Getter لإرجاع الرابط الكامل للصورة
  String get imageFullUrl =>
      'https://tiqnia.com/Apps/laundry_app/laravel/public/$image';

  factory ItemsDatum.fromJson(Map<String, dynamic> json) => ItemsDatum(
    id: int.tryParse(json["id"]?.toString() ?? '') ?? 0,
    categoryId: json["category_id"]?.toString() ?? '',
    nameEn: json["name_en"]?.toString() ?? '',
    nameAr: json["name_ar"]?.toString() ?? '',
    image: json["image"]?.toString() ?? '',
    price: json["price"]?.toString() ?? '0',
    dryPrice: json["dry_price"]?.toString() ?? '0',
    dryB2BPrice: json["dry_b2b_price"]?.toString() ?? '0',
    washPrice: json["wash_price"]?.toString() ?? '0',
    washB2BPrice: json["wash_b2b_price"]?.toString() ?? '0',
    fixPrice: json["fix_price"]?.toString() ?? '0',
    fixB2BPrice: json["fix_b2b_price"]?.toString() ?? '0',
    ironPrice: json["iron_price"]?.toString() ?? '0',
    ironB2BPrice: json["iron_b2b_price"]?.toString() ?? '0',
    washAndIronPrice: json["wash_and_iron_price"]?.toString() ?? '0',
    washAndIronB2BPrice: json["wash_and_iron_b2b_price"]?.toString() ?? '0',
    deepCleaningPrice: json["deep_cleaning_price"]?.toString() ?? '0',
    deepCleaningB2BPrice: json["deep_cleaning_b2b_price"]?.toString() ?? '0',
    laundryPrice: json["laundry_price"]?.toString() ?? '0',
    discount: json["discount"]?.toString() ?? '0',
    isActive: json["is_active"]?.toString() ?? '0',
    createdAt: DateTime.tryParse(json["created_at"] ?? '') ?? DateTime.now(),
    updatedAt: DateTime.tryParse(json["updated_at"] ?? '') ?? DateTime.now(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category_id": categoryId,
    "name_en": nameEn,
    "name_ar": nameAr,
    "image": image,
    "price": price,
    "dry_price": dryPrice,
    "dry_b2b_price": dryB2BPrice,
    "wash_price": washPrice,
    "wash_b2b_price": washB2BPrice,
    "fix_price": fixPrice,
    "fix_b2b_price": fixB2BPrice,
    "iron_price": ironPrice,
    "iron_b2b_price": ironB2BPrice,
    "wash_and_iron_price": washAndIronPrice,
    "wash_and_iron_b2b_price": washAndIronB2BPrice,
    "deep_cleaning_price": deepCleaningPrice,
    "deep_cleaning_b2b_price": deepCleaningB2BPrice,
    "laundry_price": laundryPrice,
    "discount": discount,
    "is_active": isActive,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
