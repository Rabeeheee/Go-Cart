import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/styles/spacing_styles.dart';
import 'package:go_cart/common/widgets/login_signup/form_divider.dart';
import 'package:go_cart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:go_cart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:go_cart/common/widgets/login_signup/login_social_button.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),

              LoginForm(),

                  FormDevider(dividerText: TTexts.orSignInWith.capitalize!),

                  SizedBox(height: TSizes.spaceBtwSetions,),

                  LoginSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


