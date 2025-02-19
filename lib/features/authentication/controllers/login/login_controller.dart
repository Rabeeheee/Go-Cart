import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_cart/data/repositories/authentication/authentication_repository.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/helpers/network_manager.dart';
import 'package:go_cart/util/popups/full_screen_loader.dart';
import 'package:go_cart/util/popups/loaders.dart';

class LoginController extends GetxController{


final rememberMe = false.obs;
final hidePassword = true.obs;
final localStorage = GetStorage();
final email = TextEditingController();
final password = TextEditingController();
GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();



@override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }


Future<void> emailAndPasswordSignIn() async {
  try{
    TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.loading);

    final isConnected = await NetworkManager.instance.isConnected();
    if(!isConnected){
      TFullScreenLoader.stopLoading();
      return;
    }

    if(!loginFormKey.currentState!.validate()){
      TFullScreenLoader.stopLoading();
      return;
    }

    if(rememberMe.value){
      localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
      localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
    }

    // ignore: unused_local_variable
    final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

    TFullScreenLoader.stopLoading();

    AuthenticationRepository.instance.screenRedirect();
  }catch (e) {
    TFullScreenLoader.stopLoading();
    TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
  }
}

}