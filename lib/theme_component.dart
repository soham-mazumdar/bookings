import 'package:flutter/material.dart';

class AppColors {
  static final MaterialColor primary = createSwatch(254, 66, 65, 1);
  static final MaterialColor text = createSwatch(24, 24, 24, 1);
  static final MaterialColor lightText = createSwatch(119, 126, 145,1);
  static final MaterialColor linkButtonColor = createSwatch(60, 113, 255,1);
}

class AppTextStyle {
  static final TextStyle appbar = TextStyle(fontSize: 20,color: AppColors.primary,fontWeight: FontWeight.w700);
  static final TextStyle heading = TextStyle(color: AppColors.text, fontSize: 18, fontWeight: FontWeight.w600);
  static final TextStyle lightText = TextStyle(color: AppColors.lightText,fontWeight: FontWeight.w500);
  static final TextStyle linkText = TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: AppColors.linkButtonColor);
  // static final TextStyle lightText = TextStyle(color: AppColors.primary, decoration: TextDecoration.underline);
  // static const TextStyle heading = TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
  // static const TextStyle text = TextStyle(fontSize: 12,color: Colors.black);
  // static const TextStyle h1 = TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  // static const TextStyle h2 = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
}

MaterialColor createSwatch(int r, int g, int b, double o) {
  Map<int, Color> swatch = {};
  List<int> opacities = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  for (int opacity in opacities){
    swatch[opacity] = Color.fromRGBO(r, g, b, opacity / 1000);
  }
  return MaterialColor(Color.fromRGBO(r, g, b, o).value, swatch);
}