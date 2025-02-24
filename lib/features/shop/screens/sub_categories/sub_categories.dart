import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/images/t_roundd_image.dart';
import 'package:go_cart/common/widgets/products/product_cards/product_card_horizondal.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Sports Shoes'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              
              //banner
              TRoundedImage(
                imageUrl: TImages.banner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwSetions,
              ),

              //sub categories
              Column(
                children: [
                  TSectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                              width: TSizes.spaceBtwItems,
                            ),
                        itemBuilder: (context, index) =>
                            TProductCardHorizondal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
