import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import 'image_container.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int sliderIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        CarouselSlider.builder(
          itemCount: ConstantValue.itemList.length,
          itemBuilder: (context, index, realIndex) {
            final item = ConstantValue.itemList[index];

            return SizedBox(
              height: 200, // Set the height of the container
              width: 260, // Set the width of the container
              child: ImageContainer(
                height: 200,
                // Pass the height to the ImageContainer
                width: 260,
                // Pass the width to the ImageContainer
                title: item.title ?? "",
                subtitle: item.subtitle ?? "",
                imageLink: item.imageLink ?? "",
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: .7,
            animateToClosest: true,
            pageSnapping: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlay: true,
            reverse: false,
            onPageChanged: (index, reason) {
              setState(() {
                sliderIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //slider indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(ConstantValue.itemList.length, (index) {



            return Container(
              margin: const EdgeInsets.only(
                right: 4,
              ),
              height: 15,
              width: sliderIndex == index ? 30 : 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: sliderIndex == index
                    ? Colors.purple
                    : ConstantValue.primaryColor,
              ),
            );
          }),
        ),
      ],
    )
    ;
  }
}
