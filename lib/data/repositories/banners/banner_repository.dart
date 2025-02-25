import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_cart/features/shop/models/banner_model.dart';
import 'package:go_cart/util/exceptions/firebase_exception.dart';
import 'package:go_cart/util/exceptions/format_exception.dart';
import 'package:go_cart/util/exceptions/platform_exception.dart';

class BannerRepository extends GetxController{
  static BannerRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;


  Future<List<BannerModel>> fetchBanners() async {
    try{
      final result = await _db.collection('Banners').where('Active', isEqualTo: true).get();
      return result.docs.map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot)).toList();

    }on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    }on FormatException catch (_) {
      throw TFormatException();
    }on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    }catch (e) {
      throw 'Something went wrong while fetching Banners.';
    }
  }


}