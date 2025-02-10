import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: THelperFunctions.screenHeight() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}