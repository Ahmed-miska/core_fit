import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/stacket_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SportsListScreen extends StatelessWidget {
  const SportsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sports'),
      body: SafeArea(
        child: Padding(
          padding: mainPadding(),
          child: MasonryGridView.builder(
            itemCount: productImages.length,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                child: SizedBox(
                  height: 200 * (index % 2 == 0 ? 1.5 : 1).toDouble(),
                  child: StacketImage(
                    onTap: () {
                      context.pushNamed(Routes.sportDetailsScreen);
                    },
                    imageUrl: productImages[index],
                    text: 'Basketball',
                  ),
                ),
              );
            },
          ),
          // child: GridView.builder(
          //   itemCount: productImages.length,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 8,
          //     mainAxisSpacing: 8,
          //     childAspectRatio: 0.9,
          //   ),
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: EdgeInsets.only(bottom: index == productImages.length - 1 ? 8.h : 0),
          //       child: StacketImage(
          //         onTap: () {
          //           context.pushNamed(Routes.sportDetailsScreen);
          //         },
          //         imageUrl: productImages[index],
          //         text: 'Basketball',
          //       ),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
