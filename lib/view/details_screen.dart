import 'package:car_app_ui/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {super.key,
      required this.imageLink,
      required this.price,
      required this.title});

  final String imageLink, price, title;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantValue.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        actions: [
          Image.asset(
            "assets/images/filter icon.png",
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              width: double.infinity,
              height: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    200,
                  ),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Icon(
                          CupertinoIcons.heart,
                          size: 25,
                          color: ConstantValue.primaryColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "\$45",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            Container(
                              height: 20,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ConstantValue.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ConstantValue.primaryColor.withOpacity(.6,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ConstantValue.primaryColor.withOpacity(.6,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ConstantValue.primaryColor.withOpacity(.6,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Image.asset(
                          widget.imageLink,
                          height: 300,
                          width: 250,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 130),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: ConstantValue.primaryColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        child: Container(
                            margin: const EdgeInsets.all(15),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: ConstantValue.primaryColor,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BottomTextItem(
                    title: "Height",
                    subtitle: "40cm-50cm",
                  ),
                  BottomTextItem(
                    title: "Pot",
                    subtitle: "self watering pot",
                  ),
                  BottomTextItem(
                    title: "Temperature",
                    subtitle: "18C-25C",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomTextItem extends StatelessWidget {
  final String title, subtitle;

  const BottomTextItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
