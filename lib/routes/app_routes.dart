import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:go_cart/features/authentication/screens/password_configration/forget_password.dart';
import 'package:go_cart/features/authentication/screens/signup/signup.dart';
import 'package:go_cart/features/personalization/screen/profile/profile.dart';
import 'package:go_cart/features/personalization/screen/settings/settings.dart';
import 'package:go_cart/features/shop/screens/home/home.dart';
import 'package:go_cart/features/shop/screens/store/store.dart';
import 'package:go_cart/features/shop/screens/wishlist/wishlist.dart';
import 'package:go_cart/navigation_menu.dart';
import 'package:go_cart/routes/routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: TRoutes.home, page: () => HomeScreen()),

    GetPage(
      name: TRoutes.store,
      page: () {
        final controller = Get.put(NavigationController());
        controller.selectedIndex.value = 2;
        return StoreScreen(); 
      },
    ),

    GetPage(name: TRoutes.favorites, page: () => FavoriteScreen()),
    GetPage(name: TRoutes.settings, page: () => SettingsScreen()),
    GetPage(name: TRoutes.order, page: () => HomeScreen()),
    GetPage(name: TRoutes.userProfile, page: () => ProfileScreen()),
    GetPage(name: TRoutes.signup, page: () => SignupScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => ForgetPassword()),
  ];
}
