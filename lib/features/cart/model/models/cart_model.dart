// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  CartModel({
    this.statusCode,
    this.message,
    this.data,
  });

  int? statusCode;
  String? message;
  List<CartData>? data;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        statusCode: json["status_code"],
        message: json["message"],
        data:
            List<CartData>.from(json["data"].map((x) => CartData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CartData {
  CartData(
      {this.productName,
      this.quantity,
      this.quantityType,
      this.productPrice,
      this.color,
      this.id});

  String? productName;
  int? quantity;
  int? id;
  String? quantityType;
  double? productPrice;
  String? color;

  factory CartData.fromJson(Map<String, dynamic> json) => CartData(
        productName: json["product_name"],
        id: json["id"],
        quantity: json["quantity"],
        quantityType: json["quantity_type"],
        productPrice: json["product_price"].toDouble(),
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "id": id,
        "quantity": quantity,
        "quantity_type": quantityType,
        "product_price": productPrice,
        "color": color,
      };
}
