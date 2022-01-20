import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class SurahInfoCard extends StatelessWidget {
  SurahInfoCard({Key? key}) : super(key: key);
  final Surah _surah = SurahData.currentSurah;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Container(
          margin: MyEdgeInsets.all(24.0),
          height: getHeight(257.0),
          width: getWidth(327.0),
          padding: MyEdgeInsets.symmetric(vertical: 28.0, horizontal: 56.0),
          decoration: MyDecoration.deco(
            gradient: GradientColors.violet,
            radius: 20.0,
          ),
          child: Column(
            children: [
              CustomText(_surah.name, color: Colors.white, size: 26.0),
              MySizedBox(height: 4.0),
              CustomText(_surah.meaning, color: Colors.white, size: 16.0),
              Divider(
                  color: Colors.white, thickness: 1.0, height: getHeight(32.0)),
              CustomText('Macca - ${_surah.count} oyat'.toUpperCase(),
                  color: Colors.white),
              const Spacer(),
              SvgPicture.asset(AssetImages.basmalah),
            ],
          ),
        ),
      );
}
