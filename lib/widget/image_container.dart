import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String title, subtitle, imageLink;
  final double? height, width;

  const ImageContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageLink,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageLink,
      imageBuilder: (context, imageProvider) => Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 7),
        // Set the margin only on the right

        decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(
              10,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              overflow: TextOverflow.clip,
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white,),
            ),
        
            Text(
              overflow: TextOverflow.clip,
              subtitle,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14,color: Colors.white,),
            ),
          ],
        ),
      ),
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
