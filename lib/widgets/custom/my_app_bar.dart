import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;

  MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  late DrawerProvider _drawerProvider;

  @override
  Widget build(BuildContext context) {
    _drawerProvider = context.watch();
    return SliverAppBar(
      title: Text(title),
      floating: true,
      leading: MyIconButton(
          onPressed: _drawerProvider.onTap, assetIcon: AssetIcons.sort),
      actions: [MyIconButton(onPressed: () {}, assetIcon: AssetIcons.search)],
    );
  }

  @override
  Size get preferredSize => Size(getWidth(375.0), getHeight(70.0));
}
