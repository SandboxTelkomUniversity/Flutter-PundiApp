import 'package:flutter/material.dart';

class AppColor {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static Color gray = black.withOpacity(0.5);

  static const Color halloweenOrange = Color(0xFFF15820);
  static const Color orange = Color(0xFFFD8204);
  static const Color vividCerulean = Color(0xFF01ABE9);
}

class AppText {
  static const String fontFamily = "Poppins";

  static const FontWeight thin = FontWeight.w100;
  static const FontWeight thinItalic = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight extraLightItalic = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight lightItalic = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight italic = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight mediumItalic = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight semiBoldItalic = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight boldItalic = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight extraBoldItalic = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
  static const FontWeight blackItalic = FontWeight.w900;

  // usage: Text("App", style: AppText.textNormal)
  static const TextStyle textExtraSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 8,
  );
  static const TextStyle textSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
  );
  static const TextStyle textNormal = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
  );
  static const TextStyle textMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
  );
  static const TextStyle textSemiLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
  );
  static const TextStyle textLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
  );
  static const TextStyle textCustom = TextStyle(
    fontFamily: fontFamily,
  );
}
