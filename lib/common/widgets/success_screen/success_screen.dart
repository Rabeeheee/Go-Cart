import 'package:flutter/material.dart';
import 'package:go_cart/common/styles/spacing_styles.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, this.image, this.title, this.subtitle, required this.onPressed});

  final image, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight * 2 ,
        child: Column(children: [
          Lottie.asset(
                image,
                width: THelperFunctions.screenWidth() * 0.6,
                // height: THelperFunctions.screenHeight() * 0.4,
                fit: BoxFit.contain,
                repeat: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwSetions,
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
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: onPressed, child: Text('Continue')),
              ),
        ],),
        ),
      ),
    );
  }
}