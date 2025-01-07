import 'package:car_app_ui/view/details_screen.dart';
import 'package:flutter/material.dart';

import '../widget/product_item.dart';
import '../widget/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> listOfProduct = [
    {
      "image": "assets/images/flower1.png",
      "tag": "flower1.png",
      "price": "50",
      "title": "House Shape Close",
      "subTitle": "More detaila bout product, that customor wants to know",
    },
    {
      "image": "assets/images/flower2.png",
      "tag": "flower2.png",
      "price": "60",
      "title": "Glass Water",
      "subTitle": "More detaila bout product, that customor wants to know",
    },
    {
      "image": "assets/images/flower1.png",
      "tag": "flower1.png",
      "price": "70",
      "title": "House Shape Close",
      "subTitle": "More detaila bout product, that customor wants to know",
    },
    {
      "image": "assets/images/flower2.png",
      "tag": "flower2.png",
      "price": "70",
      "title": "Glass Water",
      "subTitle": "More detaila bout product, that customor wants to know",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 30,

                    // left: 16,
                    // right: 16,
                    // top: 30,
                  ),
                  itemCount: listOfProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = listOfProduct[index];
                    //hero widget add
                    return ProductItem(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              price: data["price"] ?? "",
                              title: data["title"] ?? "",
                              imageLink: data["image"] ?? "",
                            ),
                          ),
                        );
                      },
                      price: data["price"] ?? "",
                      title: data["title"] ?? "",
                      image: data["image"] ?? "",
                      subTitle: data["subTitle"] ?? "",
                    );
                  },
                ),
              )
            ],
          ),
          const Positioned(
            top: 100,
            left: 27,
            child: Text(
              "Plants",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 30,
            right: 20,
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
