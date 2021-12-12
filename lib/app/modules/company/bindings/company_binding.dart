import 'package:barberapp/app/modules/company/controllers/company_controller.dart';
import 'package:get/get.dart';

class CompanyBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<CompanyController>(() => CompanyController());
  }
}