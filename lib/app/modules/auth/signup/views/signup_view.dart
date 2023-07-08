import 'package:e_commerce/app/modules/widgets/text_utils.dart';
import 'package:e_commerce/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../classes/validate.dart';
import '../../../widgets/auth/authButton.dart';
import '../../../widgets/auth/authTextFormField.dart';
import '../../../widgets/auth/check_widget.dart';
import '../../../widgets/auth/container_under.dart';
import '../../controllers/auth_controller.dart';
import '../controllers/signup_controller.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKeySignup = GlobalKey<FormState>();

    SignupController signupController = Get.find();
        AuthController authController = Get.find();

    final heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? AppColors().white : AppColors().darkGreyClr,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? AppColors().white : AppColors().darkGreyClr,
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
                    key: formKeySignup,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                                text: 'SIGN',
                                fontWeight: FontWeight.w500,
                                fontSize: 28.0,
                                color: Get.isDarkMode ? AppColors().mainColor : AppColors().pinkClr,
                                decoration: TextDecoration.none),
                            SizedBox(
                              width: 3.0,
                            ),
                            TextUtils(
                                text: 'UP',
                                fontWeight: FontWeight.w500,
                                fontSize: 28.0,
                                color: Get.isDarkMode ? AppColors().black : AppColors().white,
                                decoration: TextDecoration.none),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        AuthTextFormField(
                          controller: signupController.nameController,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          validator: validateInput,
                          prefixIcon: Icon(Icons.person,color: Get.isDarkMode ? AppColors().mainColor : AppColors().pinkClr,size: 30.0,),
                          suffixIcon: Text(''),
                          hintText: 'User Name',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        AuthTextFormField(
                          controller: signupController.emailController,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
                          prefixIcon: Icon(Icons.email,color: Get.isDarkMode ? AppColors().mainColor : AppColors().pinkClr,size: 30.0,),
                          suffixIcon: Text(''),
                          hintText: 'E-mail',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Obx(()=>
                          AuthTextFormField(
                            controller: signupController.passwordController,
                            obscureText: authController.isVisiblilty.value? false : true,
                            keyboardType: TextInputType.text,
                            validator: validatePassword,
                            prefixIcon: Icon(Icons.lock,color: Get.isDarkMode ? AppColors().mainColor : AppColors().pinkClr,size: 30.0,),
                            suffixIcon: authController.isVisiblilty.value? 
                             IconButton(icon: Icon(Icons.visibility_off,color: AppColors().black,),
                            onPressed: () {
                              authController.visiblilty();
                            },) :
                            IconButton(icon: Icon(Icons.visibility,color: AppColors().mainColor,),
                            onPressed: () {
                              authController.visiblilty();
                              
                            },)
                            ,
                            hintText: 'Password',
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        CheckWidget(),
                        SizedBox(height: 50.0,),
                        AuthButton(
                          onPressed: () {
                            
                          },
                          text: 'SIGN UP',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ContainerUnder(
                text_1: 'Already have an Account?',
                text_2: 'Log in',
                onPressed: () {
                  Get.offAndToNamed('/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
