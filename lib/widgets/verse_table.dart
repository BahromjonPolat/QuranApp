import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/core/components/exporting_packages.dart';

class VerseTable extends StatelessWidget {
  const VerseTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TasksTable(),
          Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                '۞ وَإِذِ اسْتَسْقَىٰ مُوسَىٰ لِقَوْمِهِ فَقُلْنَا اضْرِب بِّعَصَاكَ الْحَجَرَ ۖ فَانفَجَرَتْ مِنْهُ اثْنَتَا عَشْرَةَ عَيْنًا ۖ قَدْ عَلِمَ كُلُّ أُنَاسٍ مَّشْرَبَهُمْ ۖ كُلُوا وَاشْرَبُوا مِن رِّزْقِ اللَّهِ وَلَا تَعْثَوْا فِي الْأَرْضِ مُفْسِدِينَ',
                fontFamily: "Amiri",
                align: TextAlign.right,
                size: 18.0,
                lineHeight: 2.4,
                weight: FontWeight.w700,
              )),
          MySizedBox(height: 16.0),
          CustomText(_meanings,size: 16.0, lineHeight: 1.4),
          MySizedBox(height: 16.0),
          const Divider(thickness: 1.0, height: 1.0),
        ],
      ),
    );
  }

  final String _meanings = "Мусо ўз қавмини сероб қилишни сўраганида, «Ҳассанг билан тошни ур!» деганимизни эсланг. Бас, ундан ўн икки булоқ отилиб чиқди. Ҳар қабила ўз сувини билди. Аллоҳ берган ризқдан еб-ичинглар. Ер юзида бузғунчилик устига бузғунчилик қилманглар.";
}
