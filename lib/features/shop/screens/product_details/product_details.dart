import 'package:flutter/material.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_atributes.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:go_cart/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:go_cart/util/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  TRatingAndShare(),
                  TProductMetaData(),
                  TProductAtributes(),

                  SizedBox(height: TSizes.spaceBtwSetions,),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
