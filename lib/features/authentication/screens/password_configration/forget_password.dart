import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: TSizes.spaceBtwSetions * 2,
            ),
            Form(
              key: controller.ForgetPasswordFormkey,
              child: TextFormField(
                controller: controller.email,
                validator: TValidator.validateEmail,
                decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwSetions,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> controller.sendPasswordResetEmail(), child: Text('Submit')))
          ],
        ),
      ),
    );
  }
}
