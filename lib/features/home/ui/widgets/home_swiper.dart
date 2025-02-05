import 'package:card_swiper/card_swiper.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:flutter/material.dart';

class HomeSwiper extends StatelessWidget {
  final List<String> swiperImages;
  const HomeSwiper({super.key, required this.swiperImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Swiper(
        viewportFraction: 0.9,
        scale: 0.95,
        itemCount: testSwiperImages.length,
        autoplay: true,
        itemBuilder: (context, index) {
          return ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.asset(swiperImages[index], fit: BoxFit.fill));
        },
      ),
    );
  }
}
