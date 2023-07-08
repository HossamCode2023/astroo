// ignore_for_file: deprecated_member_use

import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';

class ThemesApp {
  static final light = ThemeData(
    primaryColor: AppColors().mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: AppColors().darkGreyClr,
    backgroundColor: AppColors().darkGreyClr,
    brightness: Brightness.dark,
  );
}
