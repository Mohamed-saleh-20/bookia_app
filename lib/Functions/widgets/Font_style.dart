import 'package:bookia_app/ui/Colors.dart';
import 'package:flutter/material.dart';



TextStyle getTitleTextStyle({double? fontSize,Color? color,FontWeight? fontWeight}){
  return TextStyle(
    fontSize: fontSize?? 18,
    color: color ?? Colors.black,
    fontWeight:fontWeight?? FontWeight.w700
  );

}

TextStyle getBodyTextStyle({double? fontSize,Color? color,FontWeight? fontWeight}){
  return TextStyle(
    fontSize: fontSize?? 16,
    color: color ?? AppColors.Border,
    fontWeight:fontWeight?? FontWeight.w500
  );

}


TextStyle getsmallTextStyle({double? fontSize,Color? color,FontWeight? fontWeight}){
  return TextStyle(
    fontSize: fontSize?? 14,
    color: color ?? AppColors.Gray,
    fontWeight:fontWeight?? FontWeight.w400
  );

}