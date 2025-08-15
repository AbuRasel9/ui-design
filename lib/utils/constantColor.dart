import 'package:flutter/material.dart';
class ConstantColor {
  static Color backgroundColor=Color(0xffE2F4FF);
  static Color whiteColor=Colors.white;
  static Color blueColor=Colors.blueAccent;
  static Color blackColor=Colors.black;
  static const LinearGradient turquoiseGradient = LinearGradient(
    colors: [
      Color(0xFF20D3B1), // #20D3B1
      Color(0xFF6EE7E7), // #6EE7E7
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Purple / Blue Card Gradient (Right Card)
  static const LinearGradient purpleBlueGradient = LinearGradient(
    colors: [
      Color(0xFF7B42F6), // #7B42F6
      Color(0xFFB01EFF), // #B01EFF
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


}