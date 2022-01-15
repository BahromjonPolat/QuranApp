import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class BookLogo extends StatelessWidget {
  double height;
  double width;

  BookLogo({
    Key? key,
    this.width = 291.7,
    this.height = 162.22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetImages.book,
      height: getHeight(height),
      width: getWidth(width),

    );
  }
}
