import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/my_reservation_home.dart';
import 'package:core_fit/features/reservation/sports_home/ui/sports_home.dart';
import 'package:core_fit/features/reservation/sports/ui/widgets/sports_home_nav_bar.dart';
import 'package:core_fit/features/reservation/staduims/ui/staduims_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SportsHomeScreen extends StatefulWidget {
  const SportsHomeScreen({super.key});
  @override
  State<SportsHomeScreen> createState() => _SportsHomeScreenState();
}

class _SportsHomeScreenState extends State<SportsHomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            Padding(
              padding: mainPadding(),
              child: SizedBox(height: 30.h, child: SvgPicture.asset('assets/icons/nameandlogo.svg', alignment: Alignment.bottomLeft)),
            ),
            verticalSpace(10),
            currentIndex == 0 ? const StaduimsScreen() : const MyReservationHome(),
          ],
        ),
      ),
      bottomNavigationBar: SportsHomeNavBar(
        onValueSelected: (value) {
          setState(() => currentIndex = value);
        },
      ),
    );
  }
}
