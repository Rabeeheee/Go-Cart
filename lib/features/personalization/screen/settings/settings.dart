import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:go_cart/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:go_cart/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/personalization/controllers/user_controller.dart';
import 'package:go_cart/features/personalization/screen/profile/profile.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final controller = UserController.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSetions,
                ),
                TUserProfileTile(onPressed: ()=> Get.to(()=> ProfileScreen()),),
                SizedBox(
                  height: TSizes.spaceBtwSetions,
                ),
              ],
            ),
            ),
            Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TSectionHeading(title: 'Account Settings',showActionButton: false,),
                SizedBox(height:  TSizes.spaceBtwItems),

                TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subtitle: 'Set shopping delivery address',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add remove Products and move to checkout',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-Progress and Completed Orders',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balence to registered bank account',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message',onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts',onTap: (){},),

                SizedBox(height: TSizes.spaceBtwSetions,),
                TSectionHeading(title: 'App Settings', showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),
                TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to Your Cloud Firebase'),
                TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location',trailing: Switch(value: false, onChanged: (value){}),
                ),
                TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (value){}),
                ),
                TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality to be seen', subtitle: 'HD Image quality to be seen',trailing: Switch(value: false, onChanged: (value){}),
                ),

                SizedBox(height: TSizes.spaceBtwSetions,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: ()async{
                    controller.logoutAccountWarningPopup();
                  }, child: Text('Logout')),
                ),
                SizedBox(height: TSizes.spaceBtwSetions * 2.5,),
              ],
            ),
            )
          ], 
        ),
      ),
    );
  }
}
