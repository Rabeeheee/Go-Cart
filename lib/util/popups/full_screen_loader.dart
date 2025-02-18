import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/loders/animation_loader.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 250,),
              TAnimationLoaderWidget(text: text, animation: animation)
            ],
          ),
        ),
        
      ),
    );
  }

  static void stopLoading() {
      // Get.back();
      Navigator.of(Get.overlayContext!).pop();
  }
}
