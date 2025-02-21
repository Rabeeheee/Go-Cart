import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({super.key, 
  required this.icon, 
  required this.title, 
  required this.subtitle, 
  this.trailing,
  this.onTap,
  });

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  ListTile(
      leading: Icon(icon, size: 28, color: dark ? TColors.white : TColors.primaryColor,),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}