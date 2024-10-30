import 'dart:async';

import 'package:core_fit/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future<dynamic> loadingWidget(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      Timer(const Duration(seconds: 3), () {
        return Navigator.pop(context);
      });
      return Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Lottie.asset(Assets.loadingAnimation, fit: BoxFit.contain),
        ),
      );
    },
  );
}
