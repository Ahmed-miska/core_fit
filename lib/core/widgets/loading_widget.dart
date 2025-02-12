import 'dart:async';

import 'package:core_fit/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future<dynamic> loadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
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
