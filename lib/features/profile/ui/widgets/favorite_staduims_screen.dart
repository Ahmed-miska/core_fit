import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/staduim_item_in_staduims_screen.dart';
import 'package:flutter/material.dart';

class FavoriteStaduimsScreen extends StatelessWidget {
  const FavoriteStaduimsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Favorite Staduims'),
      body: Padding(
        padding: mainPadding(),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: StaduimItemInStaduimsScreen(
                playground: PlaygroundModel(),
              ),
            );
          },
        ),
      ),
    );
  }
}
