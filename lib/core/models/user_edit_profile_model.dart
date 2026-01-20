// To parse this JSON data, do
//
//     final updateProfileModel = updateProfileModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetUserProfileModel updateProfileModelFromJson(String str) =>
    GetUserProfileModel.fromJson(json.decode(str));

String updateProfileModelToJson(GetUserProfileModel data) =>
    json.encode(data.toJson());

class GetUserProfileModel {
  final String status;
  final String message;
  final Data data;

  GetUserProfileModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory GetUserProfileModel.fromJson(Map<String, dynamic> json) =>
      GetUserProfileModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  final EditUserProfile user;

  Data({required this.user});

  factory Data.fromJson(Map<String, dynamic> json) =>
      Data(user: EditUserProfile.fromJson(json["user"]));

  Map<String, dynamic> toJson() => {"user": user.toJson()};
}

class EditUserProfile {
  final int id;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String phoneNumber;
  final String role;
  final dynamic otp;

  EditUserProfile({
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

  factory EditUserProfile.fromJson(Map<String, dynamic> json) =>
      EditUserProfile(
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
