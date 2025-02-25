import 'package:get/get.dart';
import 'package:go_cart/data/repositories/banners/banner_repository.dart';
import 'package:go_cart/features/shop/models/banner_model.dart';
import 'package:go_cart/util/popups/loaders.dart';

class BannerController extends GetxController {
  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //fetch banners
  Future<void> fetchBanners() async {
    try {
      isLoading.value = true;

      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      this.banners.assignAll(banners);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'OhSnap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
