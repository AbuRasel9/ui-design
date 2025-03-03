import 'package:flutter/material.dart';

class PopularCategoryListView extends StatefulWidget {
  const PopularCategoryListView({super.key});

  @override
  State<PopularCategoryListView> createState() => _PopularCategoryListViewState();
}

class _PopularCategoryListViewState extends State<PopularCategoryListView> {
  List<Map<String, String>> popularItemList = [
    {
      "image": "assets/images/sunset.png",
      "title": "Beach",
    },
    {
      "image": "assets/images/camping.png",
      "title": "Camping",
    },
    {
      "image": "assets/images/sedan.png",
      "title": "Car",
    },
    {
      "image": "assets/images/dish.png",
      "title": "Food",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset(
                  popularItemList[index]["image"] ?? "",
                  color: Colors.deepPurple,
                  height: 25,
                  width: 25,
                ),
              ),
              SizedBox(height: 5,),
              Text(popularItemList[index]["title"] ?? "",style: TextStyle(fontSize: 14,color: Colors.deepPurple.withOpacity(.4,),),),
            ],
          ),
        );
      },
    );
  }
}
