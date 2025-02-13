import 'package:flutter/cupertino.dart';
import 'package:go_cart/common/widgets/brands/brand_showcase.dart';
import 'package:go_cart/common/widgets/layouts/grid_layout.dart';
import 'package:go_cart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TBrandShowcase(
                  images: [
                    TImages.product2,
                    TImages.product3,
                    TImages.product4,
                  ],
                ),
                TBrandShowcase(
                  images: [
                    TImages.product6,
                    TImages.product5,
                    TImages.product1,
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical()),
                     SizedBox(
                  height: TSizes.spaceBtwSetions,
                ),
              ],
            ),
          ),
        ]);
  }
}
