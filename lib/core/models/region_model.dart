// To parse this JSON data, do
//
//     final regionModel = regionModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

RegionModel regionModelFromJson(String str) =>
    RegionModel.fromJson(json.decode(str));

String regionModelToJson(RegionModel data) => json.encode(data.toJson());

class RegionModel {
  final String status;
  final String message;
  final List<RegionClass> data;

  RegionModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory RegionModel.fromJson(Map<String, dynamic> json) => RegionModel(
    status: json["status"],
    message: json["message"],
    data: List<RegionClass>.from(
      json["data"].map((x) => RegionClass.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class RegionClass {
  final int id;
  final String nameEn;
  final String nameAr;
  final String deliveryCost;
  final DateTime createdAt;
  final DateTime updatedAt;

  RegionClass({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.deliveryCost,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RegionClass.fromJson(Map<String, dynamic> json) => RegionClass(
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
