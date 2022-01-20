import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class SurahPage extends StatelessWidget {
  SurahPage({Key? key}) : super(key: key);
  final Surah _surah = SurahData.currentSurah;
  final ScrollController _scrollController =
  ScrollController(keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        thickness: getWidth(6.0),
        interactive: true,
        hoverThickness: getWidth(12.0),
        showTrackOnHover: true,
        child: CustomScrollView(
          slivers: [
            MyAppBar(title: _surah.name),
            SurahInfoCard(),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                      (ctx, i) {

                    return const VerseTable();
                  },
                  childCount: 15,
                )),
          ],
        ),
      ),
    );
  }
}
