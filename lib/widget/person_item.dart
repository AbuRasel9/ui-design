import 'package:flutter/material.dart';

import '../model/user_model.dart';
import '../utils/constant.dart';

class PersonItem extends StatelessWidget {
  const PersonItem({
    super.key,
    required this.item,
    required this.index,
  });

  final UserModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      //serial number

      leading: Text(
        index.toString(),
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      //image and name
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              item.imagePath ?? "",
              fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text("${item.name}",
              style:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),

      //rating
      trailing: Container(
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
              item.rating ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
