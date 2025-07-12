import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/profile/logic/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PrivateWalletScreen extends StatefulWidget {
  const PrivateWalletScreen({super.key});

  @override
  State<PrivateWalletScreen> createState() => _PrivateWalletScreenState();
}

class _PrivateWalletScreenState extends State<PrivateWalletScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getIt<SettingCubit>().getWallet();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Private Wallet'),
      body: BlocBuilder<SettingCubit, SettingState>(
        bloc: getIt<SettingCubit>(),
        buildWhen: (previous, current) => current is WalletLoadding || current is WalletSuccess || current is WalletError,
        builder: (context, state) {
          return state.maybeWhen(
            walletLoadding: () => const Center(
                child: CircularProgressIndicator(
              color: AppColors.main,
            )),
            walletSuccess: (wallet) => Padding(
              padding: mainPadding(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TotalBalanceContainer(
                    total: wallet.data.toString(),
                  ),
                  verticalSpace(24),
                  Text('Balance record', style: TextStyles.font14Gray400),
                  verticalSpace(12),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: getIt<SettingCubit>().transactionList.length,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${getIt<SettingCubit>().transactionList[index].amount} EGP', style: TextStyles.font16Dark700),
                                    verticalSpace(4),
                                    Text(getIt<SettingCubit>().transactionList[index].timestamp?.substring(0, 10) ?? '', style: TextStyles.font14Gray400),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('${getIt<SettingCubit>().transactionList[index].type}', style: TextStyles.font16Dark700),
                                    verticalSpace(4),
                                    Text('#${getIt<SettingCubit>().transactionList[index].id}', style: TextStyles.font14Gray400),
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
            walletError: (error) => Center(child: Text(error)),
            orElse: () {
              return Container();
            },
          );
        },
      ),
    );
  }
}

class TotalBalanceContainer extends StatelessWidget {
  final String total;
  const TotalBalanceContainer({
    super.key,
    required this.total,
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
          Text(total, style: TextStyles.font28Dark700),
          verticalSpace(12),
          Text('EGP', style: TextStyles.font14Dark400),
        ],
      ),
    );
  }
}
