import 'package:flutter/cupertino.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';

class TRoundedContaner extends StatelessWidget {
  const TRoundedContaner({super.key, 
  this.width, 
  this.height, 
  this.radius = TSizes.cardRadiusLg, 
  this.child, 
  this.borderColor = TColors.borderPrimary, 
  this.backgroundColor = TColors.white, 
  this.padding, 
  this.margin, 
  this.showBorder = false,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}