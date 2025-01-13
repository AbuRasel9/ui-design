import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class TitleTextItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelect;

  const TitleTextItem(
      {super.key,
      required this.text,
      required this.onTap,
      required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelect ? Colors.purple : ConstantValue.primaryColor,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: isSelect ? FontWeight.bold : FontWeight.w500,
            color: isSelect ? ConstantValue.secondaryColor : Colors.black,
          ),
        ),
      ),
    );
  }
}
