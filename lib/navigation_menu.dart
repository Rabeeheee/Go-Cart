import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/shop/screens/home/home.dart';
import 'package:go_cart/util/constants/colors.dart';
import 'package:go_cart/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black :Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
        
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        
             
          ]
          ),
      ),
        body: Obx( ()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs; 

  final screens = [HomeScreen(),Container(color: const Color.fromARGB(255, 76, 153, 175),),Container(color: const Color.fromARGB(255, 175, 76, 129),),Container(color: const Color.fromARGB(255, 175, 160, 76),),];

}