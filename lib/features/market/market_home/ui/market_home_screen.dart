import 'package:core_fit/features/market/market_home/ui/widgets/market_home_app_bar.dart';
import 'package:core_fit/features/market/market_home/ui/widgets/market_home_nav_bar.dart';
import 'package:core_fit/features/market/market_orders/ui/market_orders_screen.dart';
import 'package:core_fit/features/market/market_store/ui/market_store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/assets.dart';

class MarketHomeScreen extends StatefulWidget {
  const MarketHomeScreen({super.key});

  @override
  State<MarketHomeScreen> createState() => _MarketHomeScreenState();
}

class _MarketHomeScreenState extends State<MarketHomeScreen> with TickerProviderStateMixin {
  int currentIndex = 0;
  late AnimationController animationController;
  @override
  void initState() {
    currentIndex = 0;
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(Assets.logo),
        ),
        backgroundColor: Colors.white,
        title: const MarketHomeAppBar(),
      ),
      body: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return currentIndex == 0 ? const MarketStoresScreen() : const MarketOrdersScreen();
        },
      ),
      bottomNavigationBar: MarketHomeNavBar(
        onValueSelected: (index) {
          setState(() => currentIndex = index);
          animationController.forward();
        },
      ),
    );
  }
}
