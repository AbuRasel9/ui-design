import 'package:car_app_ui/model/items_model.dart';
import 'package:flutter/material.dart';

class ConstantValue {
  static Color primaryColor = Colors.purple.withOpacity(.5);
  static Color secondaryColor = const Color.fromARGB(255, 254, 244, 243);

  static List<ItemsModel> itemList = [
    ItemsModel(
        title: "Plitvice Leakes",
        subtitle: "National Park Of Croatia",
        imageLink:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_2oII-AssPFNOvcLQ6ecJ6ZWQlUbKU3j8w&s"),
    ItemsModel(
        title: "Cox-Bazar Sea Beach",
        subtitle: "Chitagong Cox-bazar",
        imageLink:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE6OJ-yjH9uJvbv6QgyAo5ph9_vWeGhQOSg&s"),
    ItemsModel(
        title: "Sent-martin Sea Beach",
        subtitle: "Sent-martin",
        imageLink:"https://img.freepik.com/free-photo/lake-mountains_1204-502.jpg?semt=ais_hybrid"),
    ItemsModel(
        title: "Plitvice Leakes",
        subtitle: "National Park Of Croatia",
        imageLink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNE6OJ-yjH9uJvbv6QgyAo5ph9_vWeGhQOSg&s"),
  ];
}
