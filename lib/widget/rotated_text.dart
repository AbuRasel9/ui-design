import 'package:flutter/material.dart';

import '../utils/constant.dart';

class RotatedText extends StatelessWidget {
  final Color? textColor;
  final String text;

  const RotatedText({
    super.key,
    required this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: textColor ?? ConstantValue.primaryColor),
        ),
      ),
    );
  }
}
