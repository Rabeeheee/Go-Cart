import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/common/widgets/images/t_circular_image.dart';
import 'package:go_cart/common/widgets/texts/section_heading.dart';
import 'package:go_cart/features/personalization/screen/profile/widgets/profile_menu.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  TCircularImage(image: TImages.user,width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: Text('Change Profile Picture')),
                ],
              ),
            ),

            SizedBox(height: TSizes.spaceBtwItems / 2 ,),
            Divider(),
            SizedBox(height: TSizes.spaceBtwItems,),

            TSectionHeading(title: 'Profile Information',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems,),

            TProfileMenu( title: 'Name', value: 'Rabeeh', onPressed: () {  },),
            TProfileMenu( title: 'Username', value: 'rabeeheee', onPressed: () {  },),

            SizedBox(height: TSizes.spaceBtwItems,),
            Divider(),
            SizedBox(height: TSizes.spaceBtwItems,),

            TProfileMenu( title: 'User ID', value: '68787',icon: Iconsax.copy, onPressed: () {  },),
            TProfileMenu( title: 'E-mail', value: 'rabeeh78@gmail.com', onPressed: () {  },),
            TProfileMenu( title: 'Phone Number', value: '878576576', onPressed: () {  },),
            TProfileMenu( title: 'Gender', value: 'Male', onPressed: () {  },),
            TProfileMenu( title: 'Date of Birth', value: '23 Nov 1998', onPressed: () {  },),
            Divider(),
            SizedBox(height: TSizes.spaceBtwItems,),

            Center(child: TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red),)))
          ],
        ),
        ),
      ),
    );
  }
}

