import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/core/components/exporting_packages.dart';
import 'package:quran/core/theme/light_theme.dart';
import 'package:quran/provider/tab_bar_provider.dart';
import 'package:quran/screens/home/home_page.dart';
import 'package:quran/screens/splash/splash_screen_page.dart';

void main() {
  runApp(
    MultiProvider(
      child: const MyApp(),
      providers: [
        ChangeNotifierProvider(create: (_) => TabBarProvider()),
      ],)
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
