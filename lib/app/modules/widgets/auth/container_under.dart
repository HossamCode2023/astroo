import 'package:e_commerce/app/modules/widgets/text_utils.dart';
import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerUnder extends StatelessWidget {
  final String text_1;
  final String text_2;
  final Function() onPressed;
  const ContainerUnder({super.key,  required this.text_1, required this.text_2, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.0,
      decoration: BoxDecoration(
        color: Get.isDarkMode? AppColors().mainColor :AppColors().pinkClr,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(text: text_1, fontWeight: FontWeight.bold,
           fontSize: 20.0, color: AppColors().white, decoration: TextDecoration.none),
           SizedBox(width: 3.0,),
           TextButton(onPressed: onPressed, child: TextUtils(text: text_2, fontWeight: FontWeight.bold,
           fontSize: 20.0, color: AppColors().white, decoration: TextDecoration.underline),),
        ],
      ),
    );
  }
}