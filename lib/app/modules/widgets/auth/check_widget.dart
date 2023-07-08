import 'package:e_commerce/app/modules/widgets/text_utils.dart';
import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();

    return Obx(
      () => Row(
        children: [
          InkWell(
            onTap: () {
              authController.checkBox();
            },
            child: Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                  color: AppColors().greyLight,
                  borderRadius: BorderRadius.circular(10.0)),
              child: authController.isCheckBox.value
                  ? Icon(
                      Icons.check_rounded,
                      color: Get.isDarkMode
                          ? AppColors().mainColor
                          : AppColors().pinkClr,
                      size: 30.0,
                    )
                  : Container(),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            children: [
              TextUtils(
                  text: 'I accept ',
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: Get.isDarkMode ? AppColors().black : AppColors().white,
                  decoration: TextDecoration.none),
              TextUtils(
                  text: 'terms & condetions',
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: Get.isDarkMode ? AppColors().black : AppColors().white,
                  decoration: TextDecoration.underline),
            ],
          ),
        ],
      ),
    );
  }
}
