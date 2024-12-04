import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCachedImage extends StatelessWidget {
  final String imageUrl;
  const CustomCachedImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (context, url) => Center(child: Lottie.asset('assets/animation/loading_image.json', height: 50)),
      fit: BoxFit.fill,
    );
  }
}
