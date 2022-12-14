// To parse this JSON data, do
//
//     final groceryModel = groceryModelFromJson(jsonString);

import 'dart:convert';

GroceryModel groceryModelFromJson(String str) =>
    GroceryModel.fromJson(json.decode(str));

String groceryModelToJson(GroceryModel data) => json.encode(data.toJson());

class GroceryModel {
  GroceryModel({
    this.statusCode,
    this.message,
    this.category,
    this.todayDeals,
    this.banner,
  });

  int? statusCode;
  String? message;
  List<Categories>? category;
  List<TodayDeal>? todayDeals;
  Banner? banner;

  factory GroceryModel.fromJson(Map<String, dynamic> json) => GroceryModel(
        statusCode: json["status_code"],
        message: json["message"],
        category: List<Categories>.from(
            json["category"].map((x) => Categories.fromJson(x))),
        todayDeals: List<TodayDeal>.from(
            json["today_deals"].map((x) => TodayDeal.fromJson(x))),
        banner: Banner.fromJson(json["banner"]),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "category": List<dynamic>.from(category!.map((x) => x.toJson())),
        "today_deals": List<dynamic>.from(todayDeals!.map((x) => x.toJson())),
        "banner": banner?.toJson(),
      };
}

class Banner {
  Banner({
    this.name,
    this.ownerName,
    this.expireDate,
    this.oldPrice,
    this.newPrice,
  });

  String? name;
  String? ownerName;
  String? expireDate;
  int? oldPrice;
  int? newPrice;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        name: json["name"],
        ownerName: json["owner_name"],
        expireDate: json["expire_date"],
        oldPrice: json["old_price"],
        newPrice: json["new_price"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "owner_name": ownerName,
        "expire_date": expireDate,
        "old_price": oldPrice,
        "new_price": newPrice,
      };
}

class Categories {
  Categories({
    this.id,
    this.color,
    this.name,
  });

  int? id;
  String? color;
  String? name;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        color: json["color"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "color": color,
        "name": name,
      };
}

class TodayDeal {
  TodayDeal({
    this.productId,
    this.isFav,
    this.name,
    this.color,
    this.distance,
    this.oldPrice,
    this.newPrice,
    this.quantityType,
  });
  int? productId;
  bool? isFav;
  String? name;
  String? color;
  String? distance;
  String? oldPrice;
  String? newPrice;
  String? quantityType;

  factory TodayDeal.fromJson(Map<String, dynamic> json) => TodayDeal(
        isFav: json["is_fav"],
        productId: json["product_id"],
        name: json["name"],
        color: json["color"],
        distance: json["distance"],
        oldPrice: json["old_price"],
        newPrice: json["new_price"],
        quantityType: json["quantity_type"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "is_fav": isFav,
        "name": name,
        "color": color,
        "distance": distance,
        "old_price": oldPrice,
        "new_price": newPrice,
        "quantity_type": quantityType,
      };
}
