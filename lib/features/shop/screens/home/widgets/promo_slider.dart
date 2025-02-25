import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:go_cart/common/widgets/images/t_roundd_image.dart';
import 'package:go_cart/common/widgets/shimmers/shimmer_effect.dart';
import 'package:go_cart/features/shop/controller/banner_controller.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

final controller = Get.put(BannerController());

    return Obx(
      (){

        if(controller.isLoading.value) return TShimmerEffect(width: double.infinity, height: 190);

        if(controller.banners.isEmpty){
          return Center(child: Text('No Data Found'),);
        }else{
          return Column(
        children: [
          CarouselSlider(

            //changed to network image = false
            
            items:controller.banners.map((banner) => TRoundedImage(imageUrl: banner.imageUrl,isNetworkImage: false, onPressed: () => Get.toNamed(banner.targetScreen),),).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems,),
          Center(
            child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < controller.banners.length; i++)
                    TCircularContainer(
                      width: 20,
                      height: 4,
                      margin: EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primaryColor : Colors.grey,
                    ),
                ],
              ),
            ),
          )
        ],
      );
        }
        
      }
    );
  }
}
