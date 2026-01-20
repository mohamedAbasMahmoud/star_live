import 'dart:convert';

UpdateProfileModel updateProfileModelFromJson(String str) =>
    UpdateProfileModel.fromJson(json.decode(str));

String updateProfileModelToJson(UpdateProfileModel data) =>
    json.encode(data.toJson());

class UpdateProfileModel {
  final String status;
  final String message;
  final UpdateProfile? data; // يمكن أن يكون null

  UpdateProfileModel({required this.status, required this.message, this.data});

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      UpdateProfileModel(
        status: json["status"] ?? "",
        message: json["message"] ?? "",
        data: json["data"] != null
            ? UpdateProfile.fromJson(json["data"])
            : null,
      );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class UpdateProfile {
  final int id;
  final String userId;
  final String? image; // nullable
  final String isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? regionId; // nullable
  final User? user; // nullable

  UpdateProfile({
    required this.id,
    required this.userId,
    this.image,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.regionId,
    this.user,
  });

  factory UpdateProfile.fromJson(Map<String, dynamic> json) => UpdateProfile(
    id: json["id"],
    userId: json["user_id"],
    image: json["image"],
    isActive: json["is_active"] ?? "1",
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    regionId: json["region_id"],
    user: json["user"] != null ? User.fromJson(json["user"]) : null,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "image": image,
    "is_active": isActive,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "region_id": regionId,
    "user": user?.toJson(),
  };
}

class User {
  final int id;
  final String name;
  final String email;
  final String? emailVerifiedAt; // nullable
  final DateTime createdAt;
  final DateTime updatedAt;
  final String phoneNumber;
  final String role;
  final String? otp; // nullable

  User({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.phoneNumber,
    required this.role,
    this.otp,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"] ?? "",
    email: json["email"] ?? "",
    emailVerifiedAt: json["email_verified_at"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    phoneNumber: json["phone_number"] ?? "",
    role: json["role"] ?? "",
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
