import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/appbar/appbar.dart';
import 'package:go_cart/features/personalization/controllers/profile/update_name_controller.dart';
import 'package:go_cart/util/constants/sizes.dart';
import 'package:go_cart/util/constants/text_strings.dart';
import 'package:go_cart/util/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,
      title: Text('Change Name', style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Use real name for easy verification. This name will appear on severel pages.',
          style:  Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(height: TSizes.spaceBtwSetions,),

          Form(
            key: controller.updateUserNameFormKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: InputDecoration(labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.user),
                ),
                ),
                SizedBox(height: TSizes.spaceBtwInputFields,),
                TextFormField(
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: InputDecoration(labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.user),
                ),
                ),
              ],
            )
            ),
            SizedBox(height: TSizes.spaceBtwSetions,),

            SizedBox(height: TSizes.spaceBtwSetions,),

            SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: () => controller.updateUserName(), child: Text('Save')),
            )
        ],
      ),
      ),
    );
  }
}