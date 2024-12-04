import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';

class StacketImage extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Function()? onTap;
  const StacketImage({
    super.key,
    required this.imageUrl,
    required this.text,
    this.onTap,
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
            child: CustomCachedImage(imageUrl: imageUrl),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text, style: TextStyles.font16White700),
            ),
          ),
        ],
      ),
    );
  }
}
