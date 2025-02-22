import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/icons/t_circular_icon.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.darkerGrey,
                width: 40,
                height: 40,
                color: TColors.white,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                width: 40,
                height: 40,
                color: TColors.white,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              side: BorderSide(color: TColors.black)
            ),
            onPressed: () {},
            child: Text('Add to Cart',style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
