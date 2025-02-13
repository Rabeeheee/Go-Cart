import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/texts/brand_title_text.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/enums.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key, 
    required this.title, 
     this.maxLines =1 , 
    this.textColor, 
    this.iconColor = TColors.buttonPrimary, 
    this.textAlign = TextAlign.center, 
     this.brandTextSize = TextSize.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: 'Nike',
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            ),
        ),
        SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: TColors.buttonPrimary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}


