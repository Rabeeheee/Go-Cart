import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:go_cart/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:go_cart/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:go_cart/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:go_cart/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: TImages.OnboardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.OnboardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.OnboardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingNavigation(),
          OnBoardingNext(),
        ],
      ),
    );
  }
}

