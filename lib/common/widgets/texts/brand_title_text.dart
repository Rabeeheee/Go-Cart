import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key, 
    this.color, 
   required this.title, 
     this.maxLines = 1, 
    this.textAlign = TextAlign.center, 
     this.brandTextSize = TextSize.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSize brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,

      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}