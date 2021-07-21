import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle thinTextStyle = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w200,
    color: AppColor.white,
    letterSpacing: 0.2,
  );

  static final TextStyle regularTextStyle = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.white,
    letterSpacing: 0.2,
  );
  static final TextStyle semiBoldTextStyle = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
    letterSpacing: 0.2,
  );

  static final TextStyle boldTextStyle = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
    letterSpacing: 0.2,
  );
}

class AppColor {
  static Color lightBlack = Color(0xff363333);
  static Color black = Color(0xff121212);
  static Color orange = Color(0xffFF7E40);
  static Color lightOrange = Color(0xffF6E9E9);
  static Color red = Color(0xffCA0000);
  static Color green = Color(0xff00970F);
  static Color white = Colors.white;
}
