import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/rounded_contaner.dart';
import 'package:go_cart/common/widgets/images/t_circular_image.dart';
import 'package:go_cart/common/widgets/texts/product_price_text.dart';
import 'package:go_cart/common/widgets/texts/product_title_text.dart';
import 'package:go_cart/common/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/enums.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContaner(
              radius: TSizes.sm,
              backgroundColor: TColors.secodary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: TSizes.spaceBtwItems,),
            TProductPriceText(price: '175',isLarge: true,),
          ],
        ),
            SizedBox(width: TSizes.spaceBtwItems / 1.5,),

            TProductTitleText(title: 'White Nike Sports Shoes'),

             SizedBox(width: TSizes.spaceBtwItems /1.5,),
            
            Row(
              children: [
                TProductTitleText(title: 'Status:'),
            SizedBox(width: TSizes.spaceBtwItems,),

            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),

              ],
            ),
             SizedBox(width: TSizes.spaceBtwItems / 1.5,),

             Row(
               children: [
                TCircularImage(image: TImages.nikeLogo,
                width: 32,
                height: 32,
                overlayColor: dark ? TColors.white : TColors.black,
                ),
                 TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSize.medium,),

               ],
             )




      ],
    );
  }
}
