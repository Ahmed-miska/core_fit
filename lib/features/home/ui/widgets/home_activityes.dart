import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/stacket_image.dart';
import 'package:flutter/material.dart';

class HomeAvtivityes extends StatelessWidget {
  const HomeAvtivityes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.pushNamed(Routes.sportsHomeScreen);
              },
              child: const StacketImage(network: false, imageUrl: 'assets/images/foot.jpg', text: 'Kickoff Time'),
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.marketHomeScreen);
                    },
                    child: const StacketImage(network: false, imageUrl: 'assets/images/ma.jpg', text: 'Shop Now'),
                  ),
                ),
                verticalSpace(8),
                Expanded(
                    child: StacketImage(
                        network: false,
                        onTap: () {
                          context.pushNamed(Routes.mainSystemScreen);
                        },
                        imageUrl: 'assets/images/ai.jpg',
                        text: 'Ai Assistant')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
