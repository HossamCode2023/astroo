// ignore_for_file: deprecated_member_use

import 'package:e_commerce/app/modules/widgets/text_utils.dart';
import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        primary: Get.isDarkMode? AppColors().mainColor :AppColors().pinkClr,
        minimumSize: Size(360, 50),
      ),
      child: TextUtils(text: text, fontWeight: FontWeight.bold,
       fontSize: 18.0, color:  AppColors().white, decoration: TextDecoration.none),
    );
  }
}