import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.primary,
      body: ListView(
        children: [

          ListTile(
            leading: CircleAvatar(),
            title: Text('Quran Qpp'),
            trailing: Icon(Icons.dark_mode),

          ),
          _setCategory(),
          _setCategory(),
          _setCategory(),
          _setCategory(),
        ],
      ),
    );
  }

  ListTile _setCategory() => ListTile(
        title: CustomText('title'),
        leading: SvgPicture.asset(AssetIcons.dua),
      );
}
