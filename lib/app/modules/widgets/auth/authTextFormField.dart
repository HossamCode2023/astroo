import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final String? Function(String?) validator;
  AuthTextFormField(
      {super.key,
      required this.controller,
      required this.obscureText,
      required this.keyboardType,
      required this.validator,
      required this.prefixIcon,
      required this.suffixIcon,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      obscureText: obscureText,
      cursorColor: AppColors().black,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        fillColor: AppColors().greyLight,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
            color: AppColors().black,
            fontWeight: FontWeight.w500,
            fontSize: 16.0),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors().white),
            borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors().white),
            borderRadius: BorderRadius.circular(10.0)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors().white),
            borderRadius: BorderRadius.circular(10.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors().white),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
