import 'package:e_commerce/app/modules/auth/controllers/auth_controller.dart';
import 'package:e_commerce/app/modules/auth/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/colors.dart';
import '../../../classes/validate.dart';
import '../../../widgets/auth/authButton.dart';
import '../../../widgets/auth/authTextFormField.dart';
import '../../../widgets/auth/container_under.dart';
import '../../../widgets/text_utils.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

    LoginController loginController = Get.find();
    AuthController authController = Get.find();
    final heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Get.isDarkMode ? AppColors().white : AppColors().darkGreyClr,
        appBar: AppBar(
          backgroundColor:
              Get.isDarkMode ? AppColors().white : AppColors().darkGreyClr,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: heightScreen / 1.3,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                  child: Form(
                    key: formKeyLogin,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                                text: 'LOG',
                                fontWeight: FontWeight.w500,
                                fontSize: 28.0,
                                color: Get.isDarkMode
                                    ? AppColors().mainColor
                                    : AppColors().pinkClr,
                                decoration: TextDecoration.none),
                            SizedBox(
                              width: 3.0,
                            ),
                            TextUtils(
                                text: 'IN',
                                fontWeight: FontWeight.w500,
                                fontSize: 28.0,
                                color: Get.isDarkMode
                                    ? AppColors().black
                                    : AppColors().white,
                                decoration: TextDecoration.none),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        AuthTextFormField(
                          controller: loginController.emailController,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Get.isDarkMode
                                ? AppColors().mainColor
                                : AppColors().pinkClr,
                            size: 30.0,
                          ),
                          suffixIcon: Text(''),
                          hintText: 'E-mail',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Obx(
                          () => AuthTextFormField(
                            controller: loginController.passwordController,
                            obscureText: authController.isVisiblilty.value
                                ? false
                                : true,
                            keyboardType: TextInputType.text,
                            validator: validatePassword,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Get.isDarkMode
                                  ? AppColors().mainColor
                                  : AppColors().pinkClr,
                              size: 30.0,
                            ),
                            suffixIcon: authController.isVisiblilty.value
                                ? IconButton(
                                    icon: Icon(
                                      Icons.visibility_off,
                                      color: AppColors().black,
                                    ),
                                    onPressed: () {
                                      authController.visiblilty();
                                    },
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.visibility,
                                      color: AppColors().mainColor,
                                    ),
                                    onPressed: () {
                                      authController.visiblilty();
                                    },
                                  ),
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Get.toNamed('/forgetpassword');
                              },
                              child: TextUtils(
                                  text: 'Forgot Password',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  color: Get.isDarkMode
                                      ? AppColors().black
                                      : AppColors().white,
                                  decoration: TextDecoration.none)),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        AuthButton(
                          onPressed: () {},
                          text: 'LOG IN',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextUtils(
                            text: 'OR',
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                            color: Get.isDarkMode
                                ? AppColors().black
                                : AppColors().white,
                            decoration: TextDecoration.none),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset('assets/images/facebook.png'),
                            ),
                            SizedBox(width: 10.0),
                            InkWell(
                              onTap: () {},
                              child: Image.asset('assets/images/google.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ContainerUnder(
                text_1: 'Don\'t have an Account?',
                text_2: 'Sign up',
                onPressed: () {
                  Get.offAndToNamed('/signup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
