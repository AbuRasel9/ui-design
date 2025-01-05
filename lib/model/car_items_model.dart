class CarItemsModel {
  String? image;
  double? price;
  String? brand;
  String? model;
  String? co2;
  String? fuelCons;

  CarItemsModel({
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  });

  factory CarItemsModel.fromJson(Map<String, dynamic> json) => CarItemsModel(
    image: json["image"],
    price: json["price"]?.toDouble(),
    brand: json["brand"],
    model: json["model"],
    co2: json["co2"],
    fuelCons: json["fuesCons"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "price": price,
    "brand": brand,
    "model": model,
    "co2": co2,
    "fuesCons": fuelCons,
  };
}
