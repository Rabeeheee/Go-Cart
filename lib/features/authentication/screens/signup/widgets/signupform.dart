import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/controllers/signup/signup_controller.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:go_cart/util/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText("First name", value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText("Last name", value),
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
            controller: controller.username,
            validator: (value) =>
                TValidator.validateEmptyText("username", value),
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
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
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
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Obx(
            () => TextFormField(
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              expands: false,
              decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                  )),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Obx(()=> Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value))),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.labelMedium),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: dark ? TColors.white : TColors.buttonPrimary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primaryColor)),
                TextSpan(
                    text: '${'and'} ',
                    style: Theme.of(context).textTheme.labelMedium),
                TextSpan(
                    text: TTexts.termsOfUse,
                    style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: dark ? TColors.white : TColors.buttonPrimary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primaryColor)),
              ]))
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSetions,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
