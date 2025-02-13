import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/styles/shadow.dart';
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

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? const Color.fromARGB(255, 35, 35, 35) : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContaner(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? const Color.fromARGB(255, 52, 52, 52) : TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: TImages.product1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContaner(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secodary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
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
              height: TSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Nike Air Shoes 275',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.0'),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: TColors.darkerGrey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

