import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/rounded_contaner.dart';
import 'package:go_cart/common/widgets/icons/t_circular_icon.dart';
import 'package:go_cart/common/widgets/images/t_roundd_image.dart';
import 'package:go_cart/common/widgets/texts/product_price_text.dart';
import 'package:go_cart/common/widgets/texts/product_title_text.dart';
import 'package:go_cart/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizondal extends StatelessWidget {
  const TProductCardHorizondal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? const Color.fromARGB(255, 35, 35, 35) : TColors.white,
      ),
      child: Row(
        children: [
          TRoundedContaner(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imageUrl: TImages.product3,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: TRoundedContaner(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secodary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'White Nike shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems ),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: TProductPriceText(price: '256.0')),
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.darkerGrey,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: const Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}