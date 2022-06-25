import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageMessage extends StatelessWidget {
  final String imageUrl;
  const ImageMessage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: CachedNetworkImageProvider(imageUrl))),

      // margin: const EdgeInsets.all(10),
    );
  }
}
