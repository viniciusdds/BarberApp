import 'package:barberapp/app/modules/ratings/controllers/ratings_controller.dart';
import 'package:get/get.dart';

class RatingsBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<RatingsController>(() => RatingsController());
  }
}