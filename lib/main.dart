import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/routing/app_router.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/trigger_cuibts.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await SharedPrefHelper.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  String? token = await messaging.getToken();
  if (token != null) {
    print(token);
    await SharedPrefHelper().setFcmToken(token);
  }
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
          initialRoute: SharedPrefHelper().isUserLoggedIn() ? Routes.homeScreen : Routes.loginScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
