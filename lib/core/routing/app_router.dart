import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/auth/login/ui/login_screen.dart';
import 'package:core_fit/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/favorite_sports_screen.dart';
import 'package:core_fit/features/home/ui/home_screen.dart';
import 'package:core_fit/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.loginScreen:
        return _slideTransition(const LoginScreen());
      case Routes.signUpScreen:
        return _slideTransition(const SignUpScreen());
      case Routes.homeScreen:
        return _fadeTransition(const HomeScreen());
      case Routes.profileScreen:
        return _slideTransition(const ProfileScreen());
      case Routes.favoriteSportsScreen:
        return _slideTransition(const FavoriteSportsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: Text('No route defined for ${settings.name}'),
          )),
        );
    }
  }

  PageRouteBuilder<dynamic> _fadeTransition(Widget child) {
    return PageRouteBuilder(
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: SizeTransition(
              sizeFactor: animation,
              axis: Axis.vertical,
              child: child,
            ),
          );
        },
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return child;
        });
  }

  PageRouteBuilder<dynamic> _slideTransition(Widget child) {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0); // Start off-screen to the right
        const end = Offset.zero; // End at the center of the screen
        const curve = Curves.easeInOut; // Smooth animation

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return child;
      },
    );
  }
}
