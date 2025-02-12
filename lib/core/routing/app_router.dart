import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:core_fit/features/auth/forget_password/ui/reset_password_screen.dart';
import 'package:core_fit/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:core_fit/features/auth/login/ui/login_screen.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:core_fit/features/home/ui/home_screen.dart';
import 'package:core_fit/features/market/cart/ui/cart_screen.dart';
import 'package:core_fit/features/market/invoice/ui/invoice_screen.dart';
import 'package:core_fit/features/market/market_home/ui/favorite_screen.dart';
import 'package:core_fit/features/market/market_home/ui/market_home_screen.dart';
import 'package:core_fit/features/market/market_orders/ui/order_details_screen.dart';
import 'package:core_fit/features/market/product_details/ui/product_details_screen.dart';
import 'package:core_fit/features/market/products/ui/products_screen.dart';
import 'package:core_fit/features/market/store_details/ui/store_details_screen.dart';
import 'package:core_fit/features/market/stores/ui/stores_screen.dart';
import 'package:core_fit/features/profile/ui/profile_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/edit_profile_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/favorite_staduims_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/private_wallet_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/support_screen.dart';
import 'package:core_fit/features/reservation/featured_booking/ui/featured_booking_screen.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/my_reservation_details_screen.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/reservation_booking_details_screen.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/reservation_booking_details_screen_two.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/reservation_type_screen.dart';
import 'package:core_fit/features/reservation/sport_details.dart/ui/sport_details_screen.dart';
import 'package:core_fit/features/reservation/sports/ui/sports_home_screen.dart';
import 'package:core_fit/features/reservation/sports_home/ui/sports_list_screen.dart';
import 'package:core_fit/features/reservation/staduims/ui/staduim_details_screen.dart';
import 'package:core_fit/features/reservation/staduims/ui/staduims_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.loginScreen:
        return _slideTransition(
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return _slideTransition(
          BlocProvider(
            create: (context) => getIt<SignupCubit>()..getGovernorates(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.homeScreen:
        return _fadeTransition(const HomeScreen());
      case Routes.profileScreen:
        return _slideTransition(const ProfileScreen());
      case Routes.marketHomeScreen:
        return _fadeTransition(const MarketHomeScreen());
      case Routes.storesScreen:
        return _fadeTransition(const StoresScreen());
      case Routes.productsScreen:
        return _slideTransition(const ProductsScreen());
      case Routes.invoiceScreen:
        return _slideTransition(const InvoiceScreen());
      case Routes.storeDetailsScreen:
        return _fadeTransition(const StoreDetailsScreen());
      case Routes.favoriteScreen:
        return _slideTransition(const FavoriteScreen());
      case Routes.productDetailsScreen:
        return _fadeTransition(const ProductDetails());
      case Routes.cartScreen:
        return _fadeTransition(const CartScreen());
      case Routes.orderDetailsScreen:
        return _fadeTransition(const OrderDetailsScreen());
      case Routes.sportsHomeScreen:
        return _fadeTransition(const SportsHomeScreen());
      case Routes.sportDetailsScreen:
        return _fadeTransition(const SportDetailsScreen());
      case Routes.sportsListScreen:
        return _scaleTransition(const SportsListScreen());
      case Routes.featuredBookingScreen:
        return _fadeTransition(const FeaturedBookingScreen());
      case Routes.reservationTypeScreen:
        return _fadeTransition(const ReservationTypeScreen());
      case Routes.staduimsScreen:
        return _fadeTransition(const StaduimsScreen());
      case Routes.staduimDetailsScreen:
        return _fadeTransition(const StaduimDetailsScreen());
      case Routes.reservationBookingDetailsScreen:
        return _fadeTransition(const ReservationBookingDetailsScreen());
      case Routes.forgetPasswordScreen:
        return _fadeTransition(const ForgetPasswordScreen());
      case Routes.resetPasswordScreen:
        return _fadeTransition(const ResetPasswordScreen());
      case Routes.reservationBookingDetailsScreenTwo:
        return _fadeTransition(const ReservationBookingDetailsScreenTwo());
      case Routes.myReservationDetailsScreen:
        return _fadeTransition(const MyReservationDetailsScreen());
      case Routes.editProfileScreen:
        return _fadeTransition(const EditProfileScreen());
      case Routes.supportScreen:
        return _fadeTransition(const SupportScreen());
      case Routes.privatWalletScreen:
        return _fadeTransition(const PrivateWalletScreen());
      case Routes.favoriteStadiumsScreen:
        return _fadeTransition(const FavoriteStaduimsScreen());
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
    return PageRouteBuilder(transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    }, pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return child;
    });
  }

  // PageRouteBuilder<dynamic> _slideBottomTransition(Widget child) {
  //   return PageRouteBuilder(transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //     return Align(
  //       alignment: Alignment.bottomCenter,
  //       child: SlideTransition(
  //         position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(animation),
  //         child: child,
  //       ),
  //     );
  //   }, pageBuilder: (
  //     BuildContext context,
  //     Animation<double> animation,
  //     Animation<double> secondaryAnimation,
  //   ) {
  //     return child;
  //   });
  // }

  PageRouteBuilder<dynamic> _scaleTransition(Widget child) {
    return PageRouteBuilder(transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    }, pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return child;
    });
  }

  // PageRouteBuilder<dynamic> _fadeBottmTransition(Widget child) {
  //   return PageRouteBuilder(
  //       transitionDuration: const Duration(seconds: 1),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         return Align(
  //           alignment: Alignment.bottomCenter,
  //           child: SizeTransition(
  //             sizeFactor: animation,
  //             axis: Axis.vertical,
  //             child: child,
  //           ),
  //         );
  //       },
  //       pageBuilder: (
  //         BuildContext context,
  //         Animation<double> animation,
  //         Animation<double> secondaryAnimation,
  //       ) {
  //         return child;
  //       });
  // }

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
