import 'package:go_cart/features/shop/models/banner_model.dart';
import 'package:go_cart/routes/routes.dart';
import 'package:go_cart/util/constants/image_strings.dart';

class TDummyData{

  static final List<BannerModel> banners = [
    BannerModel(imageUrl: TImages.banner1, targetScreen: TRoutes.productReviews, active: true),
    BannerModel(imageUrl: TImages.banner2, targetScreen: TRoutes.productReviews, active: true),
    BannerModel(imageUrl: TImages.banner3, targetScreen: TRoutes.productReviews, active: true),
  ];
}