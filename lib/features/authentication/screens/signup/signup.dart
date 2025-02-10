import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/login_signup/form_divider.dart';
import 'package:go_cart/common/widgets/login_signup/login_social_button.dart';
import 'package:go_cart/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSizes.spaceBtwSetions,
              ),
              SignUpForm(),
              SizedBox(
                height: TSizes.spaceBtwSetions,
              ),
              FormDevider(dividerText: TTexts.orSignUpWith.capitalize!),
              SizedBox(
                height: TSizes.spaceBtwSetions,
              ),
              LoginSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

