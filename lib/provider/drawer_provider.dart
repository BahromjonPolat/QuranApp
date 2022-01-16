import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
class DrawerProvider extends ChangeNotifier {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  void onTap() {
    _drawerController.toggle!.call();
  }

  ZoomDrawerController get drawerController => _drawerController;
}