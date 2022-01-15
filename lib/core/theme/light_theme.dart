import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/core/components/exporting_packages.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0.0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        color: ConstColors.primary,
        fontSize: 20.0,

      )
    )
  );
}