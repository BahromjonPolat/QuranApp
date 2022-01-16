import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/widgets/my_icon_button.dart';

class TasksTable extends StatelessWidget {
  const TasksTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(47.0),
      padding: MyEdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
      margin: MyEdgeInsets.symmetric(vertical: 24.0),
      decoration:
          MyDecoration.deco(radius: 10.0, color: ConstColors.withOpacity),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ConstColors.primary,
            child: CustomText(
              '1',
              color: Colors.white,
            ),
          ),
          const Spacer(),
          MyIconButton(onPressed: (){}, assetIcon: AssetIcons.share),
          MyIconButton(onPressed: (){}, assetIcon: AssetIcons.play),
          MyIconButton(onPressed: (){}, assetIcon: AssetIcons.bookmark),
        ],
      ),
    );
  }
}
