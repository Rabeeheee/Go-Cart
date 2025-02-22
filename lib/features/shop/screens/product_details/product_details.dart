import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_atributes.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Ratings share button
                  TRatingAndShare(),
                  //price, title, stock, brand
                  TProductMetaData(),
                  //attributes
                  TProductAtributes(),

                  SizedBox(height: TSizes.spaceBtwSetions,),
                  //Checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                          SizedBox(height: TSizes.spaceBtwSetions,),
                          //Description
                          TSectionHeading(title: 'Description',showActionButton: false,),
                          SizedBox(height: TSizes.spaceBtwItems,),

                          ReadMoreText(
                            'This is a product description for Blue Nike Shoe. There are more things that can be added but i am limited. and we can buy any product which you want',
                            trimLines: 2,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: '  Show more',
                            trimExpandedText: '  Less',
                            moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                            lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                            ),

                            Divider(),
                            SizedBox(height: TSizes.spaceBtwItems,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TSectionHeading(title: 'Reviews(199)',showActionButton: false,),
                                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3))
                              ],
                            ),
                            SizedBox(height: TSizes.spaceBtwSetions,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
