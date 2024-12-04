import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/stacket_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportsListScreen extends StatelessWidget {
  const SportsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sports'),
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: mainPadding(),
            child: GridView.builder(
              itemCount: productImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: index == productImages.length - 1 ? 8.h : 0),
                  child: StacketImage(imageUrl: productImages[index], text: 'Basketball'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
