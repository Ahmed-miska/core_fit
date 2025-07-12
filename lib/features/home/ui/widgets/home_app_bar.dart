import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/notifacation/logic/cubit/notifactions_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getIt<NotifactionsCubit>().getNotifactions();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding(),
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Expanded(flex: 1, child: SvgPicture.asset(Assets.logo)),
            horizontalSpace(10),
            Expanded(flex: 2, child: SvgPicture.asset(Assets.appName, fit: BoxFit.contain)),
            const Spacer(flex: 4),
            InkWell(
              onTap: () {
                context.pushNamed(Routes.notifactionsScreen);
              },
              child: BlocBuilder<NotifactionsCubit, NotifactionsState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return SvgPicture.asset(Assets.notification);
                    },
                    notifactionsLoading: () {
                      return SvgPicture.asset(Assets.notification);
                    },
                    notifactionsFailure: (failure) {
                      return SvgPicture.asset(Assets.notification);
                    },
                    notifactionsSuccess: (success) {
                      if (success.data?.notifications?.where((element) => element.isRead == false).isEmpty ?? true) {
                        return SvgPicture.asset(Assets.notification);
                      }
                      return Badge.count(
                          count: success.data?.notifications?.where((element) => element.isRead == false).length ?? 0,
                          padding: const EdgeInsets.all(1),
                          backgroundColor: AppColors.main,
                          child: SvgPicture.asset(Assets.notification));
                    },
                  );
                },
              ),
            ),
            horizontalSpace(20),
            GestureDetector(onTap: () => context.pushNamed(Routes.profileScreen), child: SvgPicture.asset(Assets.profile)),
          ],
        ),
      ),
    );
  }
}
