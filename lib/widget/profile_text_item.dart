import 'package:flutter/material.dart';

import '../utils/constantColor.dart';

class ProfileTextItem extends StatelessWidget {
  const ProfileTextItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: ConstantColor.blackColor.withOpacity(
                .4,
              ),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              color: ConstantColor.blackColor.withOpacity(
                .4,
              ),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
