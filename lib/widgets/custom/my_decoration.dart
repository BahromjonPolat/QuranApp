import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class MyDecoration {
  static BoxDecoration deco({
    double radius = 0.0,
    Color? color,
    LinearGradient? gradient,
  }) =>
      BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(
          getWidth(radius),
        ),
      );
}
