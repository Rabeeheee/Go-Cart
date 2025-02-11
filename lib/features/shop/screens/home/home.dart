import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/search_container.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:go_cart/util/constants/colors.dart';
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
                TSearchContainer(text: 'Search in Store',),
                SizedBox(height: TSizes.spaceBtwSetions,),

                Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    TSectionHeading(title: 'Popular Categories', showActionButton: false,),
                    SizedBox(height: TSizes.spaceBtwItems,),

                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index){
                         return Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding: EdgeInsets.all(TSizes.sm),
                                decoration: BoxDecoration(
                                  color: TColors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Image(image: AssetImage(''), fit: BoxFit.cover, color: TColors.dark,),
                                ),
                              )
                            ],
                          );
                      
                      },
                      ),
                    ),
                  ],
                ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

