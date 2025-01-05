import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'home_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://static.wixstatic.com/media/3c74a6_dd6261ba6e2d412fa2798ded45353e8ff000.jpg/v1/fill/w_320,h_402,al_c,q_80,usm_0.33_1.00_0.00,enc_avif,quality_auto/3c74a6_dd6261ba6e2d412fa2798ded45353e8ff000.jpg",
                  ))),
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Car Details",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 15, bottom: 15, top: 5),
                      margin: const EdgeInsets.only(
                        top: 45,
                      ),
                      // height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ConstantValue.backgroundColor,
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                    "\$ ${ConstantValue.carItem[0].price
                                        .toString()}\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white)),
                                const TextSpan(
                                    text: " Price",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              CarItemText(
                                textColor: Colors.black,
                                title: ConstantValue.carItem[0].brand ?? "",
                                subTitle: "Brand",
                              ),
                              CarItemText(
                                  textColor: Colors.black,
                                  title: ConstantValue.carItem[0].model ?? "",
                                  subTitle: "Model No"),
                              CarItemText(
                                  textColor: Colors.black,
                                  title: ConstantValue.carItem[0].co2 ?? "",
                                  subTitle: "CO2"),
                              CarItemText(
                                  textColor: Colors.black,
                                  title: ConstantValue.carItem[0].fuelCons ??
                                      "",
                                  subTitle: "Fuel Cons"),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHUObO810Gb-KMaUwE6RtK5RaYzmj3JAbmRQ&s",
                                  height: 100,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        CarItemText(
                                          textColor: Colors.black,
                                          title: "Jesica Smith",
                                          subTitle: "License: www 34564",
                                        ),
                                        CarItemText(
                                          textColor: Colors.white,
                                          title: "359",
                                          subTitle: "Ride",
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    const Row(
                                      children: [
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(width: 8,),
                                        Icon(Icons.star, color: Colors.white,
                                          size: 15,),
                                        Icon(Icons.star, color: Colors.white,
                                          size: 15,),
                                        Icon(Icons.star, color: Colors.white,
                                          size: 15,),
                                        Icon(Icons.star, color: Colors.white,
                                          size: 15,),
                                        Icon(Icons.star, color: Colors.white,
                                          size: 15,),
                                      ],

                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: ConstantValue
                                                .cardColor,),
                                          onPressed: () {},
                                          child: const Text("Call",
                                              style: TextStyle(
                                                color: Colors.white,), ),),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: ConstantValue
                                                .cardColor,),
                                          onPressed: () {},
                                          child: const Text("Book Now",
                                              style: TextStyle(
                                                color: Colors.white,), ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 8,
                      child: Hero(
                        tag: ConstantValue.carItem[0].image ?? "",
                        child: Image.asset(
                          ConstantValue.carItem[0].image ?? "",
                          height: 120,
                          width: 140,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
