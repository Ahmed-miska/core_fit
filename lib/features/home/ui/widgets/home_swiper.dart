import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343.h,
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.9,
        scale: 0.95,
        itemCount: images.length,
        autoplay: true,
        itemBuilder: (context, index) {
          return ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.asset(images[index], fit: BoxFit.cover));
        },
      ),
    );
  }
}

List<String> images = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
];
