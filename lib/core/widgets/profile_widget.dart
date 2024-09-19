import 'package:bookia_app/core/utils/Font_style.dart';
import 'package:bookia_app/core/utils/Colors.dart';
import 'package:flutter/material.dart';

SettingList(
  String Title, 
  final Function() OnPressed
  ) {

  return Container(
    color: AppColors.Border,
    child: Row(
      children: [
        Expanded(
          child: Text(
            Title,
            style: getTitleTextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        IconButton(
            onPressed: OnPressed, icon: Icon(Icons.arrow_forward_ios_rounded))
      ],
    ),
  );
}
