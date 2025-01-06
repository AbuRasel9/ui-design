import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String image, title, subTitle, price;
  final VoidCallback onTap;

  const ProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 170,
            width: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "\$$price",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/basket icon.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
