import 'package:flutter/material.dart';

import '../utils/constantColor.dart';

class SelectedTab extends StatelessWidget {
  const SelectedTab({
    super.key,
    required this.text,
    required this.selectedIndex,
  });

  final String text;
  final bool selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
          color: selectedIndex ? ConstantColor.blueColor : Colors.transparent,
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
