import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PrivateWalletScreen extends StatelessWidget {
  const PrivateWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Private Wallet'),
      body: Padding(
        padding: mainPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TotalBalanceContainer(),
            verticalSpace(24),
            Text('Balance record', style: TextStyles.font14Gray400),
            verticalSpace(12),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      decoration: BoxDecoration(
                        color: AppColors.mainBG,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('1.235 EGP', style: TextStyles.font16Dark700),
                              verticalSpace(4),
                              Text('10/01/2023', style: TextStyles.font14Gray400),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Text('Retrieved', style: TextStyles.font16Dark700),
                              verticalSpace(4),
                              Text('#123', style: TextStyles.font14Gray400),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(10)
          ],
        ),
      ),
    );
  }
}

class TotalBalanceContainer extends StatelessWidget {
  const TotalBalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 24,
          offset: const Offset(0, 4),
        ),
      ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/total_balance.svg', height: 24.h, width: 24.h),
              horizontalSpace(8),
              Text('Total Balance', style: TextStyles.r14),
            ],
          ),
          verticalSpace(12),
          Text('4,123', style: TextStyles.font28Dark700),
          verticalSpace(12),
          Text('EGP', style: TextStyles.font14Dark400),
        ],
      ),
    );
  }
}
