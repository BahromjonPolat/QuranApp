import 'package:flutter/material.dart';

class TabBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  void onChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }
  int get currentIndex => _currentIndex;
}