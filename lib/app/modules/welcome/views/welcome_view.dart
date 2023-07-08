// ignore_for_file: deprecated_member_use

import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widgets/elevatedButtonUtils.dart';
import '../../widgets/text_utils.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/background.png',
                  fit: BoxFit.cover),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors().black.withOpacity(0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 190.0,
                    decoration: BoxDecoration(
                        color: AppColors().black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(
                        child: TextUtils(
                      text: 'Welcome',
                      fontSize: 35.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors().white,
                      decoration: TextDecoration.none,
                    )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 230.0,
                      decoration: BoxDecoration(
                          color: AppColors().black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextUtils(
                            text: 'Asroo',
                            fontSize: 35.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors().mainColor,
                            decoration: TextDecoration.none,
                          ),
                          TextUtils(
                            text: 'Shop',
                            fontSize: 35.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors().white,
                            decoration: TextDecoration.none,
                          )
                        ],
                      )),
                  SizedBox(
                    height: 250.0,
                  ),
                  ElevatedButtonUtils(
                    onPressed: () {
                      Get.offNamed(Routes.LOGIN);
                    },
                    color: AppColors().white,
                    decoration: TextDecoration.none,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    text: 'Get Start',
                    paddingHerizontal: 40.0,
                    paddingVertical: 12.0,
                    primary: AppColors().mainColor,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                        text: 'Don\'t have an Account?',
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal,
                        color: AppColors().white,
                        decoration: TextDecoration.none,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.SIGNUP);
                        },
                        child: TextUtils(
                          text: 'Sign Up',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors().white,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
