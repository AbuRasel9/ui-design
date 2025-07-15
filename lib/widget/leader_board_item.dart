import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class LeaderBoardItem extends StatelessWidget {
  const LeaderBoardItem({
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
