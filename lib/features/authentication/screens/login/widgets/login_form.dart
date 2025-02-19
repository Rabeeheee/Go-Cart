import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/controllers/login/login_controller.dart';
import 'package:go_cart/features/authentication/screens/password_configration/forget_password.dart';
import 'package:go_cart/features/authentication/screens/signup/signup.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSetions),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            Obx(
              () => TextFormField(
                obscureText: controller.hidePassword.value,
                controller: controller.password,
                validator: (value) =>
                    TValidator.validateEmptyText("Password", value),
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
              height: TSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value)),
                    Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => ForgetPassword()),
                    child: Text(TTexts.forgetPassword))
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwSetions,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.emailAndPasswordSignIn(),
                  child: Text(TTexts.signIn)),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => SignupScreen()),
                  child: Text(TTexts.createAccount)),
            ),
            SizedBox(
              height: TSizes.spaceBtwSetions,
            )
          ],
        ),
      ),
    );
  }
}
