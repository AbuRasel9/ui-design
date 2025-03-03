import 'package:car_app_ui/utils/constant.dart';
import 'package:car_app_ui/view/home/widget/popular_category_list_view.dart';
import 'package:car_app_ui/view/home/widget/title_text_item.dart';
import 'package:car_app_ui/widget/custom_slidder.dart';
import 'package:car_app_ui/widget/image_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> titleItem = ["Best nature", "Most viewed", "Recommend"];
  int selectedIndex = 0;
  int sliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.dashboard,
          color: ConstantValue.primaryColor,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.search,
            color: ConstantValue.primaryColor,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Discover",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              const SizedBox(
                height: 10,
              ),
              //title text

              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titleItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TitleTextItem(
                      isSelect: selectedIndex == index,
                      text: titleItem[index],
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              const CustomSlider(),

              const SizedBox(
                height: 20,
              ),
              //popular categories
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.withOpacity(
                        .8,
                      ),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //popular categories list view
              const SizedBox(
                height: 55,
                child: PopularCategoryListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
