import 'package:core_fit/core/routing/app_router.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(CoreFit(appRouter: AppRouter()));
}

class CoreFit extends StatelessWidget {
  final AppRouter appRouter;
  const CoreFit({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Core Fit',
          theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
