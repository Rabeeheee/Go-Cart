import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
              child: ElevatedButton(onPressed: (){}, child: Text('Done')),
              ),
             SizedBox(
                height: TSizes.spaceBtwItems,
              ), 
              SizedBox(width: double.infinity,
              child: TextButton(onPressed: (){}, child: Text('resend Email')),
              ), 
          ],
        ),
        ),
      ),
    );
  }
}