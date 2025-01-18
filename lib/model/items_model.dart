// To parse this JSON data, do
//
//     final itemsModel = itemsModelFromJson(jsonString);

import 'dart:convert';

ItemsModel itemsModelFromJson(String str) => ItemsModel.fromJson(json.decode(str));

String itemsModelToJson(ItemsModel data) => json.encode(data.toJson());

class ItemsModel {
  String? title;
  String? subtitle;
  String? imageLink;

  ItemsModel({
    this.title,
    this.subtitle,
    this.imageLink,
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) => ItemsModel(
    title: json["title"],
    subtitle: json["subtitle"],
    imageLink: json["imageLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "imageLink": imageLink,
  };
}
