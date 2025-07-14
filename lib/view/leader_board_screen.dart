import 'package:car_app_ui/utils/constant.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10,),
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
                    Positioned(
                      bottom: 80,
                      right: 143,
                      child: ProfileVerticalItem(
                        imagePath: 'assets/images/g.jpeg',
                        name: 'Johnny Rios',
                        ratingValue: "25212",
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 25,
                      child: ProfileVerticalItem(
                        imagePath: 'assets/images/k.jpeg',
                        name: 'Johnny Rios',
                        ratingValue: "25212",
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 30,
                      child: ProfileVerticalItem(
                        imagePath: 'assets/images/j.jpeg',
                        name: 'Johnny Rios',
                        ratingValue: "25212",
                      ),
                    ),
                  ],
                ),
              ),
              //bottom section
              Container(
                width: double.infinity,
                height: size.height / 1,
                decoration: BoxDecoration(
                  color: ConstantValue.whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileVerticalItem extends StatelessWidget {
  const ProfileVerticalItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.ratingValue,
  });

  final String imagePath, name, ratingValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 60,
            width: 60,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          margin: const EdgeInsets.only(
            top: 8,
          ),
          height: 30,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black54,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.waving_hand,
                size: 13,
                color: ConstantValue.yellowColor,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                ratingValue,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
