import 'package:flutter/material.dart';
import 'package:go_cart/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/device/device_utility.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
         count: 3,
      effect: ExpandingDotsEffect(activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
        ));
  }
}
