import 'package:barberapp/app/modules/service/controllers/service_controller.dart';
import 'package:get/get.dart';

class ServiceBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}