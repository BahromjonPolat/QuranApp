import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class SurahTable extends StatelessWidget {
  const SurahTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: _onTap,
      leading: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(AssetIcons.hexagon),
          CustomText('14', size: 12.0),
        ],
      ),
      title: CustomText('Al-Fatiha', size: 16.0),
      subtitle: CustomText('MACCA 7 oyat', size: 12.0),
      trailing: CustomText(
        'ناﺮﻤﻋ لآ',
        size: 20.0,
        color: ConstColors.primary,
        weight: FontWeight.w700,
      ),
    );
  }

  void _onTap() {
    navigatorPush(SurahPage());
  }
}
