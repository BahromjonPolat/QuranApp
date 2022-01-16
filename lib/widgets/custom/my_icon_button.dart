import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class MyIconButton extends StatelessWidget {
  VoidCallback onPressed;
  String assetIcon;

  MyIconButton({
    Key? key,
    required this.onPressed,
    required this.assetIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      icon: SvgPicture.asset(
        assetIcon,
        height: getHeight(24.0),
        width: getWidth(24.0),
      ),
    );
  }
}
