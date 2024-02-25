import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/theming/color_manager.dart';
import 'package:responsive_dashboard/Core/theming/font_manager.dart';

abstract class TextStyleManager {
  static TextStyle fontRegular12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: FontManger.fontFamily,
    color: ColorManager.greyColor,
  );
  static TextStyle fontRegular14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: FontManger.fontFamily,
  );

  static TextStyle fontRegular16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: FontManger.fontFamily,
    color: ColorManager.primaryColor,
  );
  static TextStyle fontMedium16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: FontManger.fontFamily,
  );
  static TextStyle fontBold16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: FontManger.fontFamily,
    color: ColorManager.secondaryColor,
  );
  static TextStyle fontSemiBold16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: FontManger.fontFamily,
    color: ColorManager.primaryColor,
  );
  static TextStyle fontSemiBold18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: FontManger.fontFamily,
  );
  static TextStyle fontSemiBold20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: FontManger.fontFamily,
  );
  static TextStyle fontMedium20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: FontManger.fontFamily,
  );
  static TextStyle fontSemiBold24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: FontManger.fontFamily,
  );
}

extension BuildContextExtension<T> on BuildContext {
  //Text Styles
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
}
