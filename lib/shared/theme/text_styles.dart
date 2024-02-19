import 'package:flutter/material.dart';
import 'package:halpay/shared/theme/app_colors.dart';

class AppTextStyles {
  static const String fontFamily = 'Helvetica';

 /// FontWeight Name
  // w100
  // Thin, the least thick.

  // w200
  // Extra-light.

  // w300
  // Light.

  // w400
  // Normal / regular / plain.

  // w500
  // Medium.

  // w600
  // Semi-bold.

  // w700
  // Bold.

  // w800
  // Extra-bold.

  // w900
  // Black, the most thick.

  /// Text style for body

  static const TextStyle bodyLgMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyLg = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyLgLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySm = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );


  static const TextStyle bodyXs = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  /// Text style for heading

  static const TextStyle h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  /// Button Text style

  static const TextStyle buttonTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
  );

  /// Hint style

  static const TextStyle hintStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textFieldBorder
  );

  /// suffix style

  static const TextStyle suffixStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black
  );
}
