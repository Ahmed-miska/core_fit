import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/widgets/search_for_staduim_bar.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/staduim_item_in_staduims_screen.dart';
import 'package:flutter/material.dart';

class StaduimsScreen extends StatelessWidget {
  const StaduimsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Staduims'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            const SearchForStaduimBar(),
            verticalSpace(12),
            ListView.builder(
              itemCount: 13,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.staduimDetailsScreen);
                    },
                    child: const StaduimItemInStaduimsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
