import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/device/device_utility.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TTabbar extends StatelessWidget implements PreferredSizeWidget{
  const TTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.light,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        labelColor: dark? TColors.white : TColors.primaryColor,
        unselectedLabelColor: TColors.darkGrey,
        ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}