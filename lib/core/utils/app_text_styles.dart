import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static TextStyle pacifico400style64 = TextStyle(
    fontSize: 64.0,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: 'Pacifico',
  );
  static TextStyle poppins500style24 = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: 'Poppins',
  );
   static TextStyle poppins300style16 = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: 'Poppins',
  );
}
