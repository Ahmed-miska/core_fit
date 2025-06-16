import 'dart:async';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/animated_widget.dart';
import 'package:core_fit/features/home/ui/widgets/home_activityes.dart';
import 'package:core_fit/features/home/ui/widgets/home_app_bar.dart';
import 'package:core_fit/features/home/ui/widgets/home_swiper.dart';
import 'package:core_fit/features/home/ui/widgets/location_in_home.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isConnected = true;
  StreamSubscription? connectionSubscription;
  bool _isDialogShowing = false;

  // @override
  // void initState() {
  //   super.initState();
  //   connectionSubscription = InternetConnection().onStatusChange.listen((status) {
  //     if (status == InternetStatus.connected) {
  //       setState(() {
  //         isConnected = true;
  //       });
  //       // Hide dialog if showing
  //       _hideNoInternetDialog();
  //     } else {
  //       setState(() {
  //         isConnected = false;
  //       });
  //       // Show blocking dialog
  //       _showNoInternetDialog();
  //     }
  //   });
  // }

  @override
  void dispose() {
    connectionSubscription?.cancel();
    super.dispose();
  }

  void _showNoInternetDialog() {
    if (_isDialogShowing || !mounted) return;

    _isDialogShowing = true;

    showGeneralDialog(
      context: context,
      barrierDismissible: false, // Can't dismiss by tapping outside
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return WillPopScope(
          onWillPop: () async => false, // Block back button
          child: Center(
            child: Material(
              type: MaterialType.transparency,
              child: ScaleTransition(
                scale: CurvedAnimation(
                  parent: animation,
                  curve: Curves.elasticOut,
                ),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Animated WiFi off icon
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: const Duration(milliseconds: 800),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.wifi_off_rounded,
                                size: 40,
                                color: Colors.red[400],
                              ),
                            ),
                          );
                        },
                      ),

                      verticalSpace(20),

                      // Title
                      Text(
                        'No Internet Connection',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),

                      verticalSpace(12),

                      // Description
                      Text(
                        'Your internet connection appears to be offline. Please check your connection and try again.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      verticalSpace(24),

                      // Retry button
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () async {
                            // Check internet connection
                            final hasInternet = await InternetConnection().hasInternetAccess;

                            if (hasInternet) {
                              _hideNoInternetDialog();
                              setState(() {
                                isConnected = true;
                              });
                            } else {
                              // Show error message if still no internet
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    children: [
                                      Icon(Icons.error_outline, color: Colors.white),
                                      const SizedBox(width: 8),
                                      const Text('Still no internet connection'),
                                    ],
                                  ),
                                  backgroundColor: Colors.red,
                                  duration: const Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Try Again',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(12),

                      // Settings help button
                      TextButton(
                        onPressed: () {
                          _showConnectionHelpDialog();
                        },
                        child: Text(
                          'Connection Help',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ).then((_) {
      _isDialogShowing = false;
    });
  }

  void _hideNoInternetDialog() {
    if (_isDialogShowing && mounted) {
      _isDialogShowing = false;
      Navigator.of(context).pop();
    }
  }

  void _showConnectionHelpDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: const Text('Connection Help'),
          content: const Text(
            'To fix your connection:\n\n'
            '• Check if WiFi is connected\n'
            '• Enable mobile data\n'
            '• Turn off airplane mode\n'
            '• Restart your router\n'
            '• Move closer to WiFi source',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            const HomeAppBar(),
            verticalSpace(16),
            Expanded(child: HomeSwiper(swiperImages: testSwiperImages)),
            verticalSpace(12),
            Expanded(
              child: Padding(
                padding: mainPadding(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    animatedWidget(
                        delay: Duration(milliseconds: 500),
                        begin: const Offset(-10, 0),
                        child: Text('Welcome ${SharedPrefHelper().getUserData()?.username}...!', style: TextStyles.font18Dark700)),
                    verticalSpace(8),
                    animatedWidget(delay: Duration(milliseconds: 600), begin: const Offset(10, 0), child: const LocationInHome()),
                    verticalSpace(12),
                    const Expanded(child: HomeAvtivityes()),
                    verticalSpace(12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
