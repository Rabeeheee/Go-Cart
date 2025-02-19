import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/personalization/models/user_model.dart';
import 'package:go_cart/util/exceptions/firebase_exception.dart';
import 'package:go_cart/util/exceptions/format_exception.dart';
import 'package:go_cart/util/exceptions/platform_exception.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  Future<void> saveUserRecord(UserModel user) async{
    try{



      
      await _db.collection("Users").doc(user.id).set(user.toJson());
 
    }on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw TFormatException();
    }on PlatformException catch (e){
      throw TPlatformException(e.code).message;
    }catch (e){
      throw 'something went wrong . please try again';
    }
  }
}