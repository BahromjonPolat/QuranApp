import 'package:flutter/material.dart';

// Navigator amallari context talab qilgani uchun, undan context yo'q faylda
// fonydalanishda noqulayliklar bo'lgani uchun, alohida klassga yozib qo'yildi.
class CustomNavigator {
  // Bu klassning metodlari barcha yerda ishlashi uchun CONTEXT ni static tarzda
  // e'lon qilamiz va init metodining parametri orqali kelgan qiymatga tenglaymiz.
  static late BuildContext _context;

  // Bu funksiyani eng birinchi kiradigan sahifada bir marta chaqirib qo'yilsa bo'ldi.
  void init(BuildContext context) {
    _context = context;
  }

  void push(Widget page) {
    Navigator.push(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
