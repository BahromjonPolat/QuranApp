import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/widgets/book_logo.dart';

class LastReadCard extends StatelessWidget {
  const LastReadCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: getWidth(326.0),
          height: getHeight(131.0),
          padding: MyEdgeInsets.symmetric(vertical: 19.0, horizontal: 20.0),
          decoration:
              MyDecoration.deco(gradient: GradientColors.violet, radius: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText('Last Read'),
              const Spacer(),
              CustomText('Al-Fatiha', size: 18.0, weight: FontWeight.w600),
              MySizedBox(height: 4.0),
              CustomText('Oyat No: 1'),
            ],
          ),
        ),
        
        Positioned(
          bottom: -17,
          right: getWidth(-24.39),
          child: BookLogo(height: 114.62,width: 206.0),

        )
      ],
    );
  }
}
