import 'dart:async';

import 'package:flutter/material.dart';

double calculateNewPrice(double price, double offer) {
  return offer == 0 ? price : price - (price * (offer / 100));
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
