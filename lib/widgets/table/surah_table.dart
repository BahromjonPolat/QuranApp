import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class SurahTable extends StatelessWidget {
  Surah surah;

  SurahTable({Key? key, required this.surah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: _onTap,
      leading: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(AssetIcons.hexagon),
          CustomText('${surah.surahNo}', size: 12.0),
        ],
      ),
      title: CustomText(surah.name, size: 16.0),
      subtitle: CustomText('MACCA ${surah.count} OYAT', size: 12.0),
      trailing: CustomText(surah.arabic,
        size: 20.0,
        color: ConstColors.primary,
        weight: FontWeight.w700,
      ),
    );
  }

  void _onTap() {
    SurahData.currentSurah = surah;
    navigatorPush(SurahPage());
  }
}
