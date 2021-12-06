import 'package:barberapp/app/modules/payments/controllers/payments_controller.dart';
import 'package:get/get.dart';

class PaymentsBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<PaymentsController>(() => PaymentsController());
  }
}