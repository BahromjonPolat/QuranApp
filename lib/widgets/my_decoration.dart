import 'package:flutter/material.dart';
import 'package:quran/core/components/size_config.dart';

class MyDecoration {
  static BoxDecoration deco({
    double radius = 0.0,
    Color color = Colors.transparent,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          getWidth(radius),
        ),
      );
}
