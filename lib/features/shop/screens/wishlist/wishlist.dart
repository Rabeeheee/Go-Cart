import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/icons/t_circular_icon.dart';
import 'package:go_cart/common/widgets/layouts/grid_layout.dart';
import 'package:go_cart/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:go_cart/navigation_menu.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
        final controller = Get.put(NavigationController());

    return Scaffold(
       appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(controller.selectedIndex.value = 0),)
        ],
       ),
       body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TGridLayout(itemCount: 4, itemBuilder:  (_, index)=> TProductCardVertical())
          ],
        ),
        
        ),
       ),
    );
  }
}