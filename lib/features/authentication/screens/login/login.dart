import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/styles/spacing_styles.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    width:  MediaQuery.of(context).size.width *0.4,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSetions),
                    child: Column(
                                    children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(TTexts.rememberMe),
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: Text(TTexts.forgetPassword))
                      ],
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwSetions,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text(TTexts.signIn)),
                    ),
                     SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                     SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: Text(TTexts.createAccount)),
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwSetions,
                    )
                                    ],
                                  ),
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 60,endIndent: 5,)),
                      Text(TTexts.orSignInWith.capitalize!),
                      Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 5,endIndent: 60,)),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSetions,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)
                        ),
                        child: IconButton(onPressed: (){}, icon: Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google))),
                      )
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
