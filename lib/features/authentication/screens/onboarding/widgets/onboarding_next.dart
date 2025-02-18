import 'package:flutter/material.dart';
import 'package:go_cart/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/device/device_utility.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtility.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnboardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: dark ? TColors.primaryColor : Colors.black),
            child: Icon(Iconsax.arrow_right_3,color: Colors.white,),),);
  }
}
