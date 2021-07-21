import 'package:flutter/material.dart';
import 'package:zest/theme/app_theme.dart';

Widget transactionTypeWidget(String id) {
  IconData iconData = Icons.monetization_on_outlined;
  Color color = AppColor.orange;
  if (id == '1') {
    iconData = Icons.note;
    color = Color(0xffD3FEFF);
  } else if (id == '2') {
    iconData = Icons.note;
    color = Color(0xffFF4444);
  } else if (id == '3') {
    iconData = Icons.note;
    color = Color(0xffFFB300);
  } else if (id == '4') {
    iconData = Icons.note;
    color = Color(0xff90D418);
  } else if (id == '5') {
    iconData = Icons.note;
    color = Color(0xff3295E8);
  } else if (id == '6') {
    iconData = Icons.note;
    color = Color(0xff1CD49C);
  } else if (id == '7') {
    iconData = Icons.note;
    color = Color(0xff84ECEC);
  } else if (id == '8') {
    iconData = Icons.note;
    color = Color(0xffF750AF);
  } else if (id == '9') {
    iconData = Icons.note;
    color = Color(0xffD62CE9);
  } else if (id == '10') {
    iconData = Icons.note;
    color = Color(0xff94B1FF);
  } else if (id == '11') {
    iconData = Icons.note;
    color = Color(0xffCE97FF);
  } else if (id == '12') {
    iconData = Icons.note;
    color = Color(0xff18CFD4);
  } else if (id == '13') {
    iconData = Icons.note;
    color = Color(0xffFFA135);
  } else if (id == '14') {
    iconData = Icons.note;
    color = Color(0xff5AFFB3);
  } else if (id == '15') {
    iconData = Icons.note;
    color = Color(0xff17D45F);
  } else if (id == '16') {
    iconData = Icons.note;
    color = Color(0xffD4BD1A);
  }

  return Container(
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        iconData,
        size: 24,
      ),
    ),
  );
}
