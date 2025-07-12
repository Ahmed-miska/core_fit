import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:core_fit/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:core_fit/features/auth/forget_password/ui/reset_password_screen.dart';
import 'package:core_fit/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:core_fit/features/auth/login/ui/login_screen.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:core_fit/features/home/ui/home_screen.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/cart/ui/cart_screen.dart';
import 'package:core_fit/features/market/invoice/ui/invoice_screen.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:core_fit/features/market/market_home/ui/favorite_screen.dart';
import 'package:core_fit/features/market/market_home/ui/market_home_screen.dart';
import 'package:core_fit/features/market/market_orders/logic/cubit/orders_cubit.dart';
import 'package:core_fit/features/market/market_orders/ui/order_details_screen.dart';
import 'package:core_fit/features/market/market_orders/ui/market_orders_screen.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/category/category_cubit.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/market/market_cubit.dart';
import 'package:core_fit/features/market/product_details/ui/product_details_screen.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:core_fit/features/market/products/ui/products_screen.dart';
import 'package:core_fit/features/market/store_details/ui/store_details_screen.dart';
import 'package:core_fit/features/market/stores/ui/stores_screen.dart';
import 'package:core_fit/features/notifacation/logic/cubit/notifactions_cubit.dart';
import 'package:core_fit/features/notifacation/ui/notifacations_screen.dart';
import 'package:core_fit/features/profile/logic/cubit/setting_cubit.dart';
import 'package:core_fit/features/profile/ui/profile_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/edit_profile_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/favorite_staduims_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/private_wallet_screen.dart';
import 'package:core_fit/features/profile/ui/widgets/support_screen.dart';
import 'package:core_fit/features/recommendation/chat_bot/logic/cubit/chatbot_cubit.dart';
import 'package:core_fit/features/recommendation/chat_bot/ui/chat_bot_screen.dart';
import 'package:core_fit/features/recommendation/diet_system/diet_system_screen.dart';
import 'package:core_fit/features/recommendation/diet_system/logic/cubit/ai_cubit.dart';
import 'package:core_fit/features/recommendation/main_ai/main_system_screen.dart';
import 'package:core_fit/features/recommendation/player_info/player_info_screen.dart';
import 'package:core_fit/features/recommendation/saved_diet_plane/saved_diet_plane_screen.dart';
import 'package:core_fit/features/reservation/featured_booking/ui/featured_booking_screen.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/logic/cubit/reservations_cubit.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/my_reservation_details_screen.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/reservation_booking_details_screen.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/reservation_booking_details_screen_two.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/reservation_type_screen.dart';
import 'package:core_fit/features/reservation/sport_details.dart/ui/sport_details_screen.dart';
import 'package:core_fit/features/reservation/sports/ui/sports_home_screen.dart';
import 'package:core_fit/features/reservation/sports_home/ui/sports_list_screen.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
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
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<LoginCubit>()),
              BlocProvider(create: (context) => getIt<ChatbotCubit>()),
            ],
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return _slideTransition(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<SignupCubit>()),
            BlocProvider(create: (context) => getIt<ChatbotCubit>()),
          ],
          child: const SignUpScreen(),
        ));
      case Routes.homeScreen:
        return _fadeTransition(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<NotifactionsCubit>()),
            BlocProvider(create: (context) => getIt<ChatbotCubit>()),
          ],
          child: const HomeScreen(),
        ));
      case Routes.profileScreen:
        return _slideTransition(BlocProvider(
          create: (context) => getIt<SettingCubit>(),
          child: const ProfileScreen(),
        ));
      case Routes.marketHomeScreen:
        return _fadeTransition(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => MarketCubit(getIt())..getMarkets()),
            BlocProvider(create: (context) => CategoryCubit(getIt())..getCategories()),
            BlocProvider(create: (context) => ProductsCubit(getIt())..getProducts()),
            BlocProvider(create: (context) => CartCubit(getIt())),
            BlocProvider(create: (context) => FavoriteCubit(getIt())),
            BlocProvider(create: (context) => OrdersCubit(getIt())),
            BlocProvider(create: (context) => ReservationsCubit(getIt())),
          ],
          child: const MarketHomeScreen(),
        ));
      case Routes.storesScreen:
        return _fadeTransition(MultiBlocProvider(
          providers: [
            // BlocProvider(create: (context) =>FavoriteCubit(getIt())),
            BlocProvider(create: (context) => MarketCubit(getIt())..getMarkets()),
            BlocProvider(create: (context) => CategoryCubit(getIt())..getCategories()),
            BlocProvider(create: (context) => ProductsCubit(getIt())..getProducts()),
          ],
          child: const StoresScreen(),
        ));
      case Routes.productsScreen:
        return _slideTransition(
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => ProductsCubit(getIt())..getProducts()),
              BlocProvider(create: (context) => CategoryCubit(getIt())..getCategories()),
            ],
            child: const ProductsScreen(),
          ),
        );
      case Routes.invoiceScreen:
        return _slideTransition(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => OrdersCubit(getIt())),
          ],
          child: const InvoiceScreen(),
        ));
      case Routes.storeDetailsScreen:
        return _fadeTransition(
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => MarketCubit(getIt())..getMarketDetails(settings.arguments as int)),
              BlocProvider(create: (context) => CategoryCubit(getIt())..getSubCategories(settings.arguments as int)),
              BlocProvider(
                  create: (context) => ProductsCubit(getIt())
                    ..getProducts(marketIdd: settings.arguments as int)
                    ..marketId = settings.arguments as int),
            ],
            child: const StoreDetailsScreen(),
          ),
        );
      case Routes.favoriteScreen:
        return _slideTransition(FavoriteScreen());
      case Routes.productDetailsScreen:
        return _fadeTransition(
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => ProductsCubit(getIt())..getProductById(settings.arguments as int)),
            ],
            child: const ProductDetails(),
          ),
        );
      case Routes.cartScreen:
        return _fadeTransition(const CartScreen());
      case Routes.orderDetailsScreen:
        return _fadeTransition(
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => OrdersCubit(getIt())),
            ],
            child: OrderDetailsScreen(
              ordrId: settings.arguments as int,
            ),
          ),
        );
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
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<PlaygroundsCubit>(),
          child: const StaduimsScreen(),
        ));
      case Routes.staduimDetailsScreen:
        return _fadeTransition(StaduimDetailsScreen(
          playground: settings.arguments as PlaygroundModel,
        ));
      case Routes.reservationBookingDetailsScreen:
        return _fadeTransition(BlocProvider.value(
          value: getIt<PlaygroundsCubit>(),
          child: ReservationBookingDetailsScreen(
            playground: settings.arguments as PlaygroundModel,
          ),
        ));
      case Routes.forgetPasswordScreen:
        return _fadeTransition(
          BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(), // إنشاء Provider للـ Cubit هنا
            child: const ForgetPasswordScreen(),
          ),
        );
      case Routes.resetPasswordScreen:
        final arguments = settings.arguments as Map<String, String>?;

        return _fadeTransition(
          BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(),
            child: ResetPasswordScreen(
              email: arguments?['email'] ?? '', // تأكد من استلام email
              otp: arguments?['otp'] ?? '', // تأكد من استلام otp
            ),
          ),
        );
      case Routes.reservationBookingDetailsScreenTwo:
        final cubit = settings.arguments as PlaygroundsCubit;

        return _fadeTransition(BlocProvider.value(
          value: cubit,
          child: const ReservationBookingDetailsScreenTwo(),
        ));
      case Routes.myReservationDetailsScreen:
        return _fadeTransition(MyReservationDetailsScreen(
          reservationModel: settings.arguments as ReservationModel,
        ));
      case Routes.editProfileScreen:
        return _fadeTransition(const EditProfileScreen());
      case Routes.supportScreen:
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<SettingCubit>(),
          child: const SupportScreen(),
        ));
      case Routes.privatWalletScreen:
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<SettingCubit>(),
          child: const PrivateWalletScreen(),
        ));
      case Routes.favoriteStadiumsScreen:
        return _fadeTransition(const FavoriteStaduimsScreen());
      case Routes.marketOrdersScreen:
        return _fadeTransition(
          BlocProvider(
            create: (context) => getIt<OrdersCubit>(),
            child: const MarketOrdersScreen(),
          ),
        );
      case Routes.notifactionsScreen:
        return _fadeTransition(
          BlocProvider(
            create: (context) => getIt<NotifactionsCubit>(),
            child: NotifacationsScreen(),
          ),
        );
      case Routes.dietSystemScreen:
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<AiCubit>(),
          child: NutritionFormPage(),
        ));
      case Routes.planScreen:
        return _fadeTransition(PlanScreen());
      case Routes.mainSystemScreen:
        return _fadeTransition(const MainSystemScreen());
      case Routes.playerInfo:
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<AiCubit>(),
          child: const PlayerImageScreen(),
        ));
      case Routes.chatBotScreen:
        return _fadeTransition(BlocProvider(
          create: (context) => getIt<ChatbotCubit>(),
          child: ChatScreen(),
        ));
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
      transitionDuration: const Duration(milliseconds: 300),
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
