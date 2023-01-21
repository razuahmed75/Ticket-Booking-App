import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryClr = primary;
  static Color textClr = const Color(0xFF3b3b3b);
  static Color bgClr = const Color(0xFFeeedf2);
  static Color orangeClr = const Color(0xFFF37B63);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textClr, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textClr, fontWeight: FontWeight.bold);

  static TextStyle headLIneStyle2 =
      TextStyle(fontSize: 21, color: textClr, fontWeight: FontWeight.bold);

  static TextStyle headLIneStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headLIneStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
