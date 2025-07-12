import 'package:cached_network_image/cached_network_image.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class StacketImage extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Function()? onTap;
  final bool? network;

  const StacketImage({
    super.key,
    required this.imageUrl,
    required this.text,
    this.onTap,
    this.network,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: network == false
                ? Image.asset(imageUrl, fit: BoxFit.cover)
                : CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover, // استخدم cover بدلاً من contain
                  ),
          ),

          // Overlay darker layer for text visibility
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: .8), // أو استخدم Colors.black.withOpacity(0.6)
                ],
              ),
            ),
          ),

          // Text
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyles.font16White700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
