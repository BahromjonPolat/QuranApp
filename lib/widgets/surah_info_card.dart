import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class SurahInfoCard extends StatelessWidget {
  const SurahInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(257.0),
      width: getWidth(327.0),
      padding: MyEdgeInsets.symmetric(vertical: 28.0, horizontal: 56.0),
      decoration: MyDecoration.deco(
        gradient: GradientColors.violet,
        radius: 20.0,
      ),
      child: Column(
        children: [
          CustomText('Al-Fatiha', color: Colors.white, size: 26.0),
          MySizedBox(height: 4.0),
          CustomText('Ochuvchi', color: Colors.white, size: 16.0),
          Divider(color: Colors.white, thickness: 1.0, height: getHeight(32.0)),
          CustomText('Macca - 7 oyat'.toUpperCase(), color: Colors.white),
          const Spacer(),
          SvgPicture.asset(AssetImages.basmalah),
        ],
      ),
    );
  }
}
