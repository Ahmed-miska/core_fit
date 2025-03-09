import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget animatedWidget({required Widget child, Offset begin = const Offset(-1, 0), Duration duration = const Duration(seconds: 1), Duration delay = const Duration(seconds: 0)}) {
  return child
      .animate()
      .addEffect(
        SlideEffect(
          begin: begin,
          end: const Offset(0, 0),
          duration: duration,
          curve: Curves.easeOutCirc,
          delay: delay,
        ),
      )
      .addEffect(FadeEffect(
        begin: 0,
        end: 1,
        duration: duration,
        curve: Curves.easeOutCirc,
        delay: delay,
      ));
}
