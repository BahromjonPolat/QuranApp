import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/core/data/surah_data.dart';
import 'package:quran/models/surah_model.dart';

class HomeMainPage extends StatelessWidget {
  HomeMainPage({Key? key}) : super(key: key);
  late TabBarProvider _tabBarProvider;

  @override
  Widget build(BuildContext context) {
    _tabBarProvider = context.watch();
    return Scaffold(
      body: NestedScrollView(
        body: PageView(
          controller: _tabBarProvider.pageController,
          onPageChanged: _tabBarProvider.onChanged,
          physics: const BouncingScrollPhysics(),
          children: _children(),
        ),
        headerSliverBuilder: (ctx, isScrolled) {
          return [
            MyAppBar(title: 'Quran App'),
            LastReadCard(),
            MyTabBar(),
          ];
        },
        controller: ScrollController(),
      ),
    );
  }

  List<Widget> _children() {
    return [
      _buildListView(),
      _buildListView(),
      _buildListView(),
      _buildListView(),
    ];
  }

  ListView _buildListView() {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: SurahData.list.length,
        itemBuilder: (ctx, i) {
          Surah surah = Surah.fromJson(SurahData.list[i]);
          return SurahTable(surah: surah);
        });
  }
}
