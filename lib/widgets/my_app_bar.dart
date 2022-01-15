import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/widgets/my_icon_button.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;

  MyAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: MyIconButton(onPressed: () {}, assetIcon: AssetIcons.sort),
      actions: [MyIconButton(onPressed: () {}, assetIcon: AssetIcons.search)],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(getWidth(375.0), getHeight(70.0));
}
