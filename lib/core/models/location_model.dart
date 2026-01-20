// To parse this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LocationModel locationModelFromJson(String str) =>
    LocationModel.fromJson(json.decode(str));

String locationModelToJson(LocationModel data) => json.encode(data.toJson());

class LocationModel {
  final String status;
  final String message;
  final List<CartLocationModel> data;

  LocationModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
    status: json["status"],
    message: json["message"],
    data: List<CartLocationModel>.from(
      json["data"].map((x) => CartLocationModel.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class CartLocationModel {
  final int id;
  final String userId;
  final String regionId;
  final dynamic url;
  final String street;
  final String buildingNumber;
  final String specialMark;
  final String floorNumber;
  final String flatNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Region region;

  CartLocationModel({
    required this.id,
    required this.userId,
    required this.regionId,
    required this.url,
    required this.street,
    required this.buildingNumber,
    required this.specialMark,
    required this.floorNumber,
    required this.flatNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.region,
  });

  factory CartLocationModel.fromJson(Map<String, dynamic> json) =>
      CartLocationModel(
        id: json["id"],
        userId: json["user_id"],
        regionId: json["region_id"],
        url: json["url"],
        street: json["street"],
        buildingNumber: json["building_number"],
        specialMark: json["special_mark"],
        floorNumber: json["floor_number"],
        flatNumber: json["flat_number"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        region: Region.fromJson(json["region"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "region_id": regionId,
    "url": url,
    "street": street,
    "building_number": buildingNumber,
    "special_mark": specialMark,
    "floor_number": floorNumber,
    "flat_number": flatNumber,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "region": region.toJson(),
  };
}

class Region {
  final int id;
  final String nameEn;
  final String nameAr;
  final String deliveryCost;
  final DateTime createdAt;
  final DateTime updatedAt;

  Region({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.deliveryCost,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
    id: json["id"],
    nameEn: json["name_en"],
    nameAr: json["name_ar"],
    deliveryCost: json["delivery_cost"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name_en": nameEn,
    "name_ar": nameAr,
    "delivery_cost": deliveryCost,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
