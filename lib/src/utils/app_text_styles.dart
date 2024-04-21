import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextStyles {
  static TextStyle robotoStyle({
    Color? color,
    double? fontSize,
  }) =>
      GoogleFonts.roboto(
        fontSize: fontSize ?? 14,
        color: color,
        fontWeight: FontWeight.w400,
      );

  static TextStyle bungeeStyle({
    Color? color,
    double? fontSize,
  }) =>
      GoogleFonts.ubuntu(
        fontSize: 24,
        color: color,
        fontWeight: FontWeight.w400,
      );
}
