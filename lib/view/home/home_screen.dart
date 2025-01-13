import 'package:car_app_ui/utils/constant.dart';
import 'package:car_app_ui/view/home/widget/title_text_item.dart';
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
        padding: EdgeInsets.all(15.0),
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
            const SizedBox(height: 10,),
            //title text

            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: titleItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return TitleTextItem(
                    isSelect: selectedIndex==index,
                    text: titleItem[index],
                    onTap: () {
                      selectedIndex=index;
                      setState(() {

                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 200,
              child: CarouselView(
                  itemExtent: 150,
                  itemSnapping: true,
                  elevation: 2,
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  onTap: (int value) {
                    print('item tapped $value');
                  },
                  children: List.generate(20, (int index) {
                    return Container(
                      color: Colors.red,
                      child: Center(child: Text(index.toString())),
                    );
                  })),
            )

          ],
        ),
      ),
    );
  }
}
