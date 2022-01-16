import 'package:flutter/material.dart';
import 'package:quran/core/components/size_config.dart';

class MyEdgeInsets {
  static symmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      EdgeInsets.symmetric(
        horizontal: getWidth(horizontal),
        vertical: getHeight(vertical),
      );

  static all(double size) => EdgeInsets.symmetric(
        horizontal: getWidth(size),
        vertical: getHeight(size),
      );
}
