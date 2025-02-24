import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/shop/models/category_model.dart';
import 'package:go_cart/util/exceptions/firebase_exception.dart';
import 'package:go_cart/util/exceptions/platform_exception.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find();


  final _db = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getAllCategories() async{
    try{
      final snapshot = await _db.collection('categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      log("Fetched Categories: ${list.length}");

      return list; 
    }on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    }on PlatformException catch(e) {
      throw TPlatformException(e.code).message;
    }catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


  // Future<void> uploadDummyData(List<CategoryModel> categories) async {
  //   try{
  //     final storage = Get.put(TFirebaseStorageServices());

  //     for(var category in categories){
  //       final file = await storage.getImageDataFromAssets(category.image);

  //       final url = await storage.uploadImageData('categories', file , category.name);

  //       category.image = url;

  //       await _db.collection("categories").doc(category.id).set(category.toJson());
  //     }
  //   }on FirebaseException catch (e) {
  //     throw TFirebaseException(e.code).message;
  //   }on PlatformException catch (e) {
  //     throw TPlatformException(e.code).message;
  //   } catch (e) {
  //     throw 'Something went wrong. Please try again';
  //   }
  // }
}