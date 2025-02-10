import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/sizes.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
          top: TSizes.appBarHeight,
          left: TSizes.defaultSpace,
          bottom: TSizes.defaultSpace,
          right: TSizes.defaultSpace
  );
}