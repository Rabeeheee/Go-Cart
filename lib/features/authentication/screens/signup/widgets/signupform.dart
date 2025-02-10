import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/screens/signup/verify_email.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
        final dark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child:
                      Checkbox(value: true, onChanged: (value) {})),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(
                            color: dark
                                ? TColors.white
                                : TColors.buttonPrimary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primaryColor)),
                TextSpan(
                    text: '${'and'} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: TTexts.termsOfUse,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(
                            color: dark
                                ? TColors.white
                                : TColors.buttonPrimary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primaryColor)),
              ]))
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSetions,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(()=> VerifyEmailScreen()), child: Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
