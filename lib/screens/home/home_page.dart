import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/screens/home/home_drawer.dart';
import 'package:quran/screens/home/main_page.dart';

class HomePage extends StatelessWidget {

  late DrawerProvider _drawerProvider;
  @override
  Widget build(BuildContext context) {
    CustomNavigator().init(context);
    _drawerProvider = context.watch();
    return ZoomDrawer(
      controller: _drawerProvider.drawerController,
      menuScreen: const HomePageDrawer(),
      showShadow: true,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      backgroundColor: ConstColors.dark,
      mainScreen: HomeMainPage(),
    );
  }
}
