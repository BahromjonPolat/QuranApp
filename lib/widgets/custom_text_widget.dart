import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class CustomText extends StatelessWidget {
  String data;
  FontWeight weight;
  double size;
  Color color;
  TextAlign align;

  CustomText(
    this.data, {
    Key? key,
    this.color = ConstColors.dark,
    this.weight = FontWeight.w500,
    this.size = 14.0,
    this.align = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        fontSize: getWidth(size),
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
