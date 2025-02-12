import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/rounded_contaner.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/search_container.dart';
import 'package:go_cart/common/widgets/images/t_circular_image.dart';
import 'package:go_cart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store'),
        actions: [
          TCartCounterIcon(onPressed: (){})
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
        return [SliverAppBar(
          automaticallyImplyLeading: false,
       pinned: true,
       floating: true,
       backgroundColor: THelperFunctions.isDarkMode(context) ? const Color.fromARGB(255, 0, 0, 0) : TColors.light,
       expandedHeight: 440,

       flexibleSpace: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [

            SizedBox(height: TSizes.spaceBtwItems,),
            TSearchContainer(text: 'Search in Store',showBorder: true,showBackgroud: false,padding: EdgeInsets.zero,),
            SizedBox(height: TSizes.spaceBtwSetions,),


            TSectionHeading(title: 'Featured Brands', onPressed: (){}),
            SizedBox(height: TSizes.spaceBtwItems / 1.5),

            TRoundedContaner(
              padding: EdgeInsets.all(TSizes.sm),
              showBorder: true,
              backgroundColor: Colors.transparent,
              child: Row(
                children: [
                  TCircularImage(
                    image: TImages.nikeLogo,
                    isNetworkImage: false,
                    backgroundColor: Colors.transparent,
                    overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
                    ),
                SizedBox(width: TSizes.spaceBtwItems / 2),

                Column(
                  children: [
                    
                  ],
                )

                ],
              ),
            )
          ],
        ),
        ),
        )];
      }, body: Container()),
    );
  }
}

