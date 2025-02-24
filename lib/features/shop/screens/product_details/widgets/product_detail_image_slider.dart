import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:go_cart/common/widgets/icons/t_circular_icon.dart';
import 'package:go_cart/common/widgets/images/t_roundd_image.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  TSizes.productImageRadius * 2,
                  TSizes.productImageRadius * 2,
                  TSizes.productImageRadius * 2,
                  TSizes.productImageRadius * 7,
                ),
                child: Center(
                  child: Image(image: AssetImage(TImages.product13)),
                ),
              ),
            ),
            Positioned(
              right: TSizes.defaultSpace / 2,
              bottom: 30,
              left: TSizes.defaultSpace / 2,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => TRoundedImage(
                      width: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primaryColor),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageUrl: TImages.product13),
                ),
              ),
            ),
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
