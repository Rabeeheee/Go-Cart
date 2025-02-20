import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:go_cart/data/repositories/user/user_repository.dart';
import 'package:go_cart/features/personalization/controllers/user_controller.dart';
import 'package:go_cart/features/personalization/screen/profile/profile.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/helpers/network_manager.dart';
import 'package:go_cart/util/popups/full_screen_loader.dart';
import 'package:go_cart/util/popups/loaders.dart';

class UpdateNameController extends GetxController{
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    initializeName();    
  }

  Future<void> initializeName() async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;

  }
  Future<void> updateUserName() async{
    try{
      TFullScreenLoader.openLoadingDialog('We are updating your information...', TImages.loading);
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        TFullScreenLoader.stopLoading();
        return;
      }

      if(!updateUserNameFormKey.currentState!.validate()){
        TFullScreenLoader.stopLoading();
        return;
      }

      Map<String, dynamic> name = {'FirstName' : firstName.text.trim(), 'LastName' : lastName.text.trim()};
      await userRepository.updateSingleField(name);

      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      TFullScreenLoader.stopLoading();

      TLoaders.successSnackBar(title: 'Congratulations', message: 'your Name has been updated.');

      Get.off(()=> ProfileScreen());


    }catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}