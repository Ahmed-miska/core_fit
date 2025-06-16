import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

 customToast(String message ,{Color? color, }) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: color ??AppColors.main,
    textColor:  Colors.white ,
    fontSize: 16.0,
  );
}