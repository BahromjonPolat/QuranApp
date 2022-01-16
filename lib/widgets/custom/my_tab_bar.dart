import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/provider/tab_bar_provider.dart';

class MyTabBar extends StatelessWidget {
  MyTabBar({Key? key}) : super(key: key);
  late TabBarProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = context.watch();
    return SliverToBoxAdapter(
      child: Container(
        margin: MyEdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
        child: Row(
          children: [
            _setTab(label: 'Surah', index: 0),
            _setTab(label: 'Para', index: 1),
            _setTab(label: 'Page', index: 2),
            _setTab(label: 'Bookm', index: 3),
          ],
        ),
      ),
    );
  }

  Expanded _setTab({required String label, required int index}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          _provider.onChanged(index);
        },
        child: Column(
          children: [
            Padding(
                padding: MyEdgeInsets.symmetric(vertical: 14, horizontal: 17.0),
                child: CustomText(label)),
            MySizedBox(
              height: 3.0,
              width: 100,
              child: Material(
                color: _provider.currentIndex == index
                    ? ConstColors.primary
                    : ConstColors.unselected,
              ),
            )
          ],
        ),
      ),
    );
  }
}
