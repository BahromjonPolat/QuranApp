import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/core/data/surah_data.dart';
import 'package:quran/models/surah_model.dart';

class SurahPage extends StatelessWidget {
  SurahPage({Key? key}) : super(key: key);
  final Surah _surah = SurahData.currentSurah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppBar(title: _surah.name!),
          SurahInfoCard(),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (ctx, i) {
              return VerseTable();
            },
            childCount: 15,
          )),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildSliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Flexible(
        child: ListView.builder(
            padding: MyEdgeInsets.symmetric(horizontal: 24.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            itemBuilder: (_, __) {
              return VerseTable();
            }),
      ),
    );
  }
}
