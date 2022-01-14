import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/widgets/my_sized_box.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            'Quran App',
            size: 28.0,
            color: ConstColors.primary,
            weight: FontWeight.w700,
          ),
          MySizedBox(height: 16.0),
          CustomText(
            'Learn Quran and\n Recite once everyday',
            align: TextAlign.center,
            size: 18.0,
            weight: FontWeight.w400,
          ),
          MySizedBox(height: 49),
          Container(
            margin: MyEdgeInsets.symmetric(horizontal: 30.0),
            decoration:
                MyDecoration.deco(radius: 30.0, color: ConstColors.primary),
            width: MediaQuery.of(context).size.width,
            height: getHeight(450.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AssetImages.sky),
                SvgPicture.asset(AssetImages.book),
                Transform.translate(
                    offset: Offset(0.0, getHeight(30.0)),
                    child: CustomButton(onPressed: () {}, label: 'Get Started'))
              ],
            ),
          ),
        ],
      ),
    );
  }
 
}
