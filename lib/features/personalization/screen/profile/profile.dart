import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/shimmers/shimmer_effect.dart';
import 'package:go_cart/common/widgets/images/t_circular_image.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/personalization/controllers/user_controller.dart';
import 'package:go_cart/features/personalization/screen/profile/widgets/change_name.dart';
import 'package:go_cart/features/personalization/screen/profile/widgets/profile_menu.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty ? networkImage : TImages.user;
                     return controller.imageUploading.value ? TShimmerEffect(width: 80, height: 80,radius: 80,) : TCircularImage(
                        image: image,
                        width: 80,
                        height: 80,
                        isNetworkImage: networkImage.isNotEmpty,
                      ); 
                    }),
                    TextButton(
                        onPressed: () => controller.uploadUserProfilePicture(),
                        child: Text('Change Profile Picture')),
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Obx(() => TProfileMenu(
                    title: 'Name',
                    value: controller.user.value.fullName,
                    onPressed: () => Get.off(() => ChangeName()),
                  )),
              TProfileMenu(
                title: 'Username',
                value: controller.user.value.username,
                onPressed: () {},
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                title: 'User ID',
                value: controller.user.value.id,
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'E-mail',
                value: controller.user.value.email,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: controller.user.value.phoneNumber,
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: '23 Nov 1998',
                onPressed: () {},
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Center(
                  child: TextButton(
                      onPressed: () => controller.deleteAccountWarningPopup(),
                      child: Text(
                        'Close Account',
                        style: TextStyle(color: Colors.red),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
