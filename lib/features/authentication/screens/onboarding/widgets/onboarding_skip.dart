import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/device/device_utility.dart';
import 'package:go_cart/features/authentication/screens/login/login.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: const Text('Skip'),
        ),
          );
  }
}