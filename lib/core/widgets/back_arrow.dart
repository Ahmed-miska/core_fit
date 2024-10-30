import 'package:core_fit/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(Assets.backArrow),
      ),
    );
  }
}
