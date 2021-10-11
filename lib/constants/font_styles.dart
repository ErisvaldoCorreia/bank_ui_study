import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './colors.dart';

class FontStyles {
  static final cardTitle = GoogleFonts.poppins(
    color: kThirdColor,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static final cardSubTitle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  static final bodyText = GoogleFonts.poppins(
    color: kPrimaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static final listTitle = GoogleFonts.poppins(
    color: kPrimaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static final listSubTitle = GoogleFonts.poppins(
    color: Colors.grey,
    fontSize: 15,
  );
}
