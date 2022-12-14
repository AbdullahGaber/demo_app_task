// To parse this JSON data, do
//
//     final addressesModel = addressesModelFromJson(jsonString);

import 'dart:convert';

AddressesModel addressesModelFromJson(String str) =>
    AddressesModel.fromJson(json.decode(str));

String addressesModelToJson(AddressesModel data) => json.encode(data.toJson());

class AddressesModel {
  AddressesModel({
    this.statusCode,
    this.message,
    this.data,
  });

  int? statusCode;
  String? message;
  List<AddressData>? data;

  factory AddressesModel.fromJson(Map<String, dynamic> json) => AddressesModel(
        statusCode: json["status_code"],
        message: json["message"],
        data: List<AddressData>.from(json["data"].map((x) => AddressData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AddressData {
  AddressData({
    this.title,
    this.addressDetails,
  });

  String? title;
  String? addressDetails;

  factory AddressData.fromJson(Map<String, dynamic> json) => AddressData(
        title: json["title"],
        addressDetails: json["address_details"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "address_details": addressDetails,
      };
}
