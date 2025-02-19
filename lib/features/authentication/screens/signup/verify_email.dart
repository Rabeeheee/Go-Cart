import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/data/repositories/authentication/authentication_repository.dart';
import 'package:go_cart/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),
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
                email ?? '',
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
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: Text('Continue')),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () => controller.sendEmailVerification(), child: Text('resend Email')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
