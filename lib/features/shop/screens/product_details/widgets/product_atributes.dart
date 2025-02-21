import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/chips/choice_chips.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/rounded_contaner.dart';
import 'package:go_cart/common/widgets/texts/product_price_text.dart';
import 'package:go_cart/common/widgets/texts/product_title_text.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:go_cart/util/themes/custom_themes/chip_theme.dart';

class TProductAtributes extends StatelessWidget {
  const TProductAtributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContaner(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          //
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          TProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          TProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              TProductTitleText(
                title:
                    'This is the description for the product and it can go up to 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green',selected: true,onSelected: (value){},),
            TChoiceChip(text: 'Blue',selected: false,onSelected: (value){},),
            TChoiceChip(text: 'Yellow',selected: false,onSelected: (value){},),
               
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size'),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
           Wrap(
            spacing: 8,
            children: [
               TChoiceChip(text: 'EU 34',selected: true, onSelected: (value){},),
            TChoiceChip(text: 'EU 36',selected: false, onSelected: (value){},),
            TChoiceChip(text: 'EU 38',selected: false, onSelected: (value){},),
              
            ],
           )
          ],
        )
      ],
    );
  }
}
