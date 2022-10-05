import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle boldText = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
  );
  static TextStyle titleText = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
  );

  static TextStyle smallText = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
  );
  static TextStyle headerText = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
  );
  static TextStyle cardTitleBig = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
  );
  static TextStyle cardSubTitleBig = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
  );
  static TextStyle cardTitleSmall = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
  );
  static TextStyle cardSubTitleSmall = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 10.0, fontWeight: FontWeight.w600),
  );
}
