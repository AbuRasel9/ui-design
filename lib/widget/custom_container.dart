import 'package:flutter/material.dart';

import '../utils/constantColor.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    this.margin = EdgeInsets.zero,
    this.height = 0,
    this.width = 0,
  });

  final Widget child;
  final EdgeInsets padding, margin;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      width: width,
      decoration: BoxDecoration(
        color: ConstantColor.whiteColor,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: child,
    );
  }
}
