import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:go_cart/features/authentication/screens/login/login.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
             Lottie.asset(
                TImages.VerifyEmail,
                width: THelperFunctions.screenWidth() * 0.6,
                // height: THelperFunctions.screenHeight() * 0.4,
                fit: BoxFit.contain,
                repeat: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwSetions,
              ),
             Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
             
                SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changePasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
             
                SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changePasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.offAll(()=>LoginScreen()), child: Text('Done')),
              ),
             SizedBox(
                height: TSizes.spaceBtwItems,
              ), 
              SizedBox(width: double.infinity,
              child: TextButton(onPressed: ()=> ForgetPasswordController.instance.resendPasswordResetEmail(email), child: Text('resend Email')),
              ), 
          ],
        ),
        ),
      ),
    );
  }
}