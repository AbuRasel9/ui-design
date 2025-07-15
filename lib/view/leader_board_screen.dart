import 'package:car_app_ui/model/user_model.dart';
import 'package:car_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

import '../widget/leader_board_item.dart';
import '../widget/person_item.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ConstantValue.yellowColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "Leaderboard",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                top: 10,
              ),
              child: Text(
                "Ens in 2d 23Hours",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            //top section
            Container(
              height: size.height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/leaderboard.png",
                  ),
                ),
              ),
              child: const Stack(
                children: [
                  //profile vertical item
                  //middle item
                  //middle image and text
                  Positioned(
                    bottom: 80,
                    right: 143,
                    child: LeaderBoardItem(
                      imagePath: 'assets/images/g.jpeg',
                      name: 'Johnny Rios',
                      ratingValue: "25212",
                    ),
                  ),
                  //first image and text

                  Positioned(
                    bottom: 50,
                    left: 25,
                    child: LeaderBoardItem(
                      imagePath: 'assets/images/k.jpeg',
                      name: 'Johnny Rios',
                      ratingValue: "25212",
                    ),
                  ),
                  //last
                  Positioned(
                    bottom: 40,
                    right: 30,
                    child: LeaderBoardItem(
                      imagePath: 'assets/images/j.jpeg',
                      name: 'Johnny Rios',
                      ratingValue: "25212",
                    ),
                  ),
                ],
              ),
            ),
            //bottom section
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ConstantValue.whiteColor,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  itemCount: ConstantValue.users.length,
                  itemBuilder: (context, index) {
                    final item = ConstantValue.users[index];
                    return PersonItem(
                      item: item,
                      index: index,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
