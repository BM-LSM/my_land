import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme() {
  return TextTheme(
      headline1: GoogleFonts.nanumGothic(
        fontSize: 18.0,
        color: Colors.black,
      ),
      headline2: GoogleFonts.nanumGothic(
        fontSize: 16.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: GoogleFonts.nanumGothic(
        fontSize: 16.0,
        color: Colors.black,
      ),
      bodyText2: GoogleFonts.nanumGothic(fontSize: 14.0, color: Colors.grey),
      subtitle1: GoogleFonts.nanumGothic(fontSize: 15.0, color: Colors.black));
}

ThemeData theme() {
  return ThemeData(
    textTheme: textTheme(),
  );
}