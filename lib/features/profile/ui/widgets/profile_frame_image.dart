import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileFrameImage extends StatelessWidget {
  const ProfileFrameImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 150.h,
          width: 130.h,
          child: CustomCachedImage(imageUrl: SharedPrefHelper().getUserData()!.imageUrl ?? '', fit: BoxFit.cover),
        ),
        SvgPicture.asset(
          'assets/icons/user_frame.svg',
          height: 170.h,
          width: 170.h,
        ),
      ],
    );
  }
}
