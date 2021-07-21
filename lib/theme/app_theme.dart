import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle thinTextStyle = GoogleFonts.raleway(
    fontSize: 18,
    fontWeight: FontWeight.w200,
    color: AppColor.white,
    letterSpacing: 0.2,
  );

  static final TextStyle regularTextStyle = GoogleFonts.raleway(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.white,
    letterSpacing: 0.2,
  );
  static final TextStyle semiBoldTextStyle = GoogleFonts.raleway(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
    letterSpacing: 0.2,
  );

  static final TextStyle boldTextStyle = GoogleFonts.raleway(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
    letterSpacing: 0.2,
  );
}

class AppColor {
  static Color black = Color(0xff121212);
  static Color white = Colors.white;
  static Color lightWhite = Color(0xffF3F3F3);
  static Color teal = Color(0xff00F7FF);
  static Color lightGreen = Color(0xff00FFB6);
  static Color darkPink = Color(0xffD11B70);
  static Color darkGreen = Color(0xff00BC89);
  static Color purple = Color(0xff7C1BD1);
  static Color lightPink = Color(0xffE37BD6);
}
