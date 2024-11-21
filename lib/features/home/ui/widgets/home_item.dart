import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String image;
  final Function()? onTap;
  const HomeItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            colorFilter: const ColorFilter.mode(Colors.black12, BlendMode.darken),
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            title,
            style: TextStyles.font16White700,
          ),
        ),
      ),
    );
  }
}
