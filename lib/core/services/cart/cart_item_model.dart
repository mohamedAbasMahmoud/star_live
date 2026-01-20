import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CartItemModel extends Equatable {
  final int productId;
  final String name;
  final int quantity;
  final String price;
  final int subtotal;
  final String image;
  final String link;

  bool incrementLoading = false;
  bool decrementLoading = false;
  bool removeLoading = false;

  CartItemModel({
    required this.productId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.subtotal,
    required this.image,
    required this.link,
  });

  CartItemModel copyWith({
    int? productId,
    String? name,
    int? quantity,
    String? price,
    int? subtotal,
    String? image,
    String? link,
  }) {
    return CartItemModel(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      subtotal: subtotal ?? this.subtotal,
      image: image ?? this.image,
      link: link ?? this.link,
    );
  }

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        productId: json["id"] ?? 0,
        name: json["name"] ?? "",
        quantity: json["quantity"] ?? 0,
        price: json["price"] ?? "",
        subtotal: json["subtotal"] ?? 0,
        image: json["image"] ?? "",
        link: json["link"] ?? "",
      );

  @override
  List<Object> get props => [
        productId,
        name,
        quantity,
        price,
        subtotal,
        image,
        link,
      ];
}
