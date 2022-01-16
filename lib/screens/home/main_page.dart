import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

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
      _buildListView(5),
      _buildListView(10),
      _buildListView(3),
      _buildListView(26),
    ];
  }

  ListView _buildListView(int count) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        // primary: false,
        itemCount: count,
        itemBuilder: (ctx, i) {
          return const SurahTable();
        });
  }
}
