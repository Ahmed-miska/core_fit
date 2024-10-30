import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAvtivityes extends StatelessWidget {
  const HomeAvtivityes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 8.w, bottom: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
                        image: AssetImage('assets/images/4.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Sports Market',
                        style: TextStyles.font16White700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
                        image: AssetImage('assets/images/5.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Sports news',
                        style: TextStyles.font16White700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
                  image: AssetImage('assets/images/6.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Sports Bookings',
                  style: TextStyles.font16White700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
