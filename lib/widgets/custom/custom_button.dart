import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;
  CustomButton({
    required this.onPressed,
    required this.label,
    this.color = ConstColors.orange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: CustomText(
        label,
        weight: FontWeight.w600,
        size: 18.0,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getWidth(30.0))),
        padding: MyEdgeInsets.symmetric(horizontal: 40, vertical: 16.0),
      ),
    );
  }
}
