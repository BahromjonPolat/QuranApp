import 'package:flutter/material.dart';
import 'package:quran/core/components/exporting_packages.dart';

class HomePage extends StatelessWidget {
  const HomePage
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Quran App",),
    );
  }
}