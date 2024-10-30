import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/auth/login/ui/login_screen.dart';
import 'package:core_fit/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      default:
        return null;
    }
  }
}
