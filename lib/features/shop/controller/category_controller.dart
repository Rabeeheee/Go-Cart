import 'dart:developer';

import 'package:get/get.dart';
import 'package:go_cart/data/repositories/categories/category_repository.dart';
import 'package:go_cart/features/shop/models/category_model.dart';
import 'package:go_cart/util/popups/loaders.dart';

class CategoryController extends GetxController{
  static CategoryController get intance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

   @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    try{
      isLoading.value = true;

      final categories = await _categoryRepository.getAllCategories();

      allCategories.assignAll(categories);

featuredCategories.assignAll(
  allCategories.where((category) => category.isFeatured).take(8).toList()
);

    featuredCategories.refresh();

     


    }catch (e) {
      TLoaders.errorSnackBar(title: 'OhSnap!',message: e.toString());
    }finally {
       isLoading.value = false;
    }
  }
}