import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/search_container.dart';
import 'package:go_cart/common/widgets/layouts/grid_layout.dart';
import 'package:go_cart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:go_cart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:go_cart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSetions,
                  ),
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSetions,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories(),
                        
                      ],
                    ),
                  ),
                  SizedBox(
                          height: TSizes.spaceBtwSetions,
                        ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3],),
                   SizedBox(height: TSizes.spaceBtwSetions,),

                   TSectionHeading(title: 'Popular Products', onPressed: (){}, ),
                    SizedBox(height: TSizes.spaceBtwItems,),
                

                TGridLayout(itemCount: 4, itemBuilder: (_ , int ) => TProductCardVertical(),),
                  
                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}

