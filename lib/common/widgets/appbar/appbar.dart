import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/device/device_utility.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.leadingicon,
    this.leadingOnPressed,
    this.actions,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton( onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left,color: dark ? TColors.white : TColors.dark,))
            : leadingicon != null ? IconButton(   onPressed: leadingOnPressed, icon: Icon(leadingicon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}
