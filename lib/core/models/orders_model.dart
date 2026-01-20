class OrdersModel {
  final String status;
  final List<OrdersModelDatum> data;

  OrdersModel({required this.status, required this.data});

  factory OrdersModel.fromJson(Map<String, dynamic> json) => OrdersModel(
    status: json["status"],
    data: List<OrdersModelDatum>.from(
      json["data"].map((x) => OrdersModelDatum.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class OrdersModelDatum {
  final int id;
  final String userId;
  final String status;
  final String totalPrice;
  final String pickupId;
  final String deliveryId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String locationId;
  final dynamic note;
  final User user;

  OrdersModelDatum({
    required this.id,
    required this.userId,
    required this.status,
    required this.totalPrice,
    required this.pickupId,
    required this.deliveryId,
    required this.createdAt,
    required this.updatedAt,
    required this.locationId,
    required this.note,
    required this.user,
  });

  factory OrdersModelDatum.fromJson(Map<String, dynamic> json) =>
      OrdersModelDatum(
        id: json["id"],
        userId: json["user_id"],
        status: json["status"],
        totalPrice: json["total_price"],
        pickupId: json["pickup_id"],
        deliveryId: json["delivery_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        locationId: json["location_id"],
        note: json["note"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "status": status,
    "total_price": totalPrice,
    "pickup_id": pickupId,
    "delivery_id": deliveryId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "location_id": locationId,
    "note": note,
    "user": user.toJson(),
  };
}

class User {
  final int id;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String phoneNumber;
  final String role;
  final dynamic otp;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.phoneNumber,
    required this.role,
    required this.otp,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    phoneNumber: json["phone_number"],
    role: json["role"],
    otp: json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "phone_number": phoneNumber,
    "role": role,
    "otp": otp,
  };
}
