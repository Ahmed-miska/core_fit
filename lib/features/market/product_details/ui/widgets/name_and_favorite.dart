import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:flutter/material.dart';

class NameAndFavorite extends StatelessWidget {
  const NameAndFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'X SPEEDPORTAL MESSI.1 FIRM GROUND X SPEEDPORTAL MESSI.1 FIRM GROUND',
            style: TextStyles.font16Dark700,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        verticalSpace(10),
        const AddFavoriteIcon(isFavorite: false, isBorder: true),
      ],
    );
  }
}
