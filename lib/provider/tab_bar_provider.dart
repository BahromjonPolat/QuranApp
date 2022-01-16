import 'package:flutter/material.dart';

class TabBarProvider extends ChangeNotifier {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  void onChanged(int index) {
    _currentIndex = index;
    _pageController.jumpToPage(_currentIndex);
    notifyListeners();
  }
  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;
}