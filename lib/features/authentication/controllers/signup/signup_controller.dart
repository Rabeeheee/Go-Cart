import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_cart/data/repositories/authentication/authentication_repository.dart';
import 'package:go_cart/data/repositories/user/user_repository.dart';
import 'package:go_cart/features/authentication/screens/signup/verify_email.dart';
import 'package:go_cart/features/personalization/models/user_model.dart';
import 'package:go_cart/util/constants/image_strings.dart';
import 'package:go_cart/util/helpers/network_manager.dart';
import 'package:go_cart/util/popups/full_screen_loader.dart';
import 'package:go_cart/util/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final privacyPolicy = true.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

 void signup() async {
  try {
    TFullScreenLoader.openLoadingDialog(
        'We are processing your information...', TImages.loading);

    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLoader.stopLoading();
      return; 
    }

    if (!signupFormKey.currentState!.validate()) {
      TFullScreenLoader.stopLoading();
      return;
    }

    if (!privacyPolicy.value) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnackBar(
        title: 'Accept Privacy Policy',
        message:
            'In order to create an account, you must accept the Privacy Policy & Terms of Use.',
      );
      return; 
    }

    final userCredential = await AuthenticationRepository.instance
        .registerWithEmailAndPassword(email.text.trim(), password.text.trim());

    final newUser = UserModel(
      id: userCredential.user!.uid,
      firstName: firstName.text.trim(),
      lastName: lastName.text.trim(),
      username: username.text.trim(),
      email: email.text.trim(),
      phoneNumber: phoneNumber.text.trim(),
      profilePicture: '',
    );

    final userRepository = Get.put(UserRepository());
    await userRepository.saveUserRecord(newUser);

    TFullScreenLoader.stopLoading();

    TLoaders.successSnackBar(
      title: "Congratulations",
      message: 'Your account has been created! Verify your email to continue.',
    );

    Get.to(() => VerifyEmailScreen(email: email.text.trim(),));
  } catch (e) {
    TFullScreenLoader.stopLoading(); 
    TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
  }
}

}
