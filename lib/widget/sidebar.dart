import 'package:car_app_ui/widget/rotated_text.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../view/home_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      color: ConstantValue.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/more icon.png",
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Green",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          const RotatedText(
            text: "Shape Class",
          ),
          const SizedBox(height: 5),
          //dot icon

          Container(
            margin: const EdgeInsets.only(
              left: 11,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ConstantValue.primaryColor),
            height: 8,
            width: 8,
          ),
          const SizedBox(height: 20), // Adjust this as needed
          const RotatedText(
            textColor: Colors.black,
            text: "Indore Plants",
          ),
          const SizedBox(height: 20), // Adjust this as needed
          const RotatedText(
            textColor: Colors.black,
            text: "Green Plants",
          ),
          const Spacer(),
          Container(

            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: ConstantValue.primaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15,),
                bottomRight: Radius.circular(15,),),
            ),
            child: const Icon(
              Icons.home, color: Colors.white, size: 40,),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
