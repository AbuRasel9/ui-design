import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantValue.backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ConstantValue.backgroundColor,
          title: const Text(
            "Available Car",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
          child: ListView.builder(
            itemCount: ConstantValue.carItem.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ),
                  );
                },
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
                        color: ConstantValue.cardColor,
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
                                        "\$ ${ConstantValue.carItem[index].price.toString()}\n",
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
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              CarItemText(
                                title: ConstantValue.carItem[index].brand ?? "",
                                subTitle: "Brand",
                              ),
                              CarItemText(
                                  title:
                                      ConstantValue.carItem[index].model ?? "",
                                  subTitle: "Model No"),
                              CarItemText(
                                  title: ConstantValue.carItem[index].co2 ?? "",
                                  subTitle: "CO2"),
                              CarItemText(
                                  title:
                                      ConstantValue.carItem[index].fuelCons ??
                                          "",
                                  subTitle: "Fuel Cons"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      child: Image.asset(
                        ConstantValue.carItem[index].image ?? "",
                        height: 110,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

class CarItemText extends StatelessWidget {
  const CarItemText({super.key, required this.title, required this.subTitle, this.textColor});

  final String title;
  final String subTitle;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color:textColor ?? Colors.white,
          ),
        ),
        Text(
          subTitle,
          style:  TextStyle(
            fontSize: 14,
            color:textColor ?? Colors.white,
          ),
        ),
      ],
    );
  }
}
