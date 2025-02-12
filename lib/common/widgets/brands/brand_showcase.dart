import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/brands/brand_card.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/rounded_contaner.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContaner(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          TBrandCard(showBorder: false),
          SizedBox(height: TSizes.spaceBtwItems,),
    
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: TRoundedContaner(
      height: 100,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(right: TSizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ));
}
