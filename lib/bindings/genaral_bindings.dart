import 'package:get/get.dart';
import 'package:go_cart/util/helpers/network_manager.dart';

class GenaralBindings extends Bindings{
  @override
  void dependencies(){
    Get.put(NetworkManager());

      
  }
}