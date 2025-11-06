import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget commonTextWidget({
  String? text,
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text!,
    style: GoogleFonts.inter(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
