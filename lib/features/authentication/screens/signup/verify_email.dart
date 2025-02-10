import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/success_screen/success_screen.dart';
import 'package:go_cart/features/authentication/screens/login/login.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
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
                TTexts.coformationEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                'rabeehm845@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.coformationEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                      onPressed: ()=>Get.to(()=>LoginScreen()),
                      image: TImages.VerifyEmail,
                      title: TTexts.coformationEmail,
                      subtitle: TTexts.coformationEmailSubTitle,
                      )),
                    child: Text('Continue')),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: Text('resend Email')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
