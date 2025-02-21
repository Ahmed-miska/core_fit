import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/routing/app_router.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/trigger_cuibts.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = SimpleBlocObserver();
  setupGetIt();
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
            primaryColor: AppColors.main,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
