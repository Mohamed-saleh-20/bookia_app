import 'package:bookia_app/core/utils/Colors.dart';
import 'package:flutter/material.dart';


//-------------------Title Text--------------------

TextStyle getTitleTextStyle( {

  double? fontSize,
  Color? color, 
  FontWeight? fontWeight

   }) {

  return TextStyle(
      fontSize: fontSize ?? 18,
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w700);
}



//-------------------Body Text--------------------

TextStyle getBodyTextStyle( {
  
  double? fontSize,
  Color? color,
  FontWeight? fontWeight

      }) {

  return TextStyle(
      fontSize: fontSize ?? 16,
      color: color ?? AppColors.Border,
      fontWeight: fontWeight ?? FontWeight.w500);
}



//-------------------Small Text--------------------

TextStyle getsmallTextStyle({
  
  double? fontSize,
  Color? color,
  FontWeight? fontWeight
      
      }) {

  return TextStyle(
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.Gray,
      fontWeight: fontWeight ?? FontWeight.w400);
}
