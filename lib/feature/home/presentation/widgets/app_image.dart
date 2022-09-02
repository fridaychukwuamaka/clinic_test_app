import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
    this.radius = 0,
  }) : super(key: key);

  final String image;

  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: CachedNetworkImage(
            height: height,
            width: width,
            imageUrl: image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black54,
          height: height,
          width: width,
        ),
      ],
    );
  }
}
