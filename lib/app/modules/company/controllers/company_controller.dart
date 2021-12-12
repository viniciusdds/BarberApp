import 'package:barberapp/app/data/model/company_model.dart';
import 'package:barberapp/app/data/model/service_model.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:get/get.dart';

class CompanyController extends GetxController {

   final Company company = Get.arguments;

   void openService(List<Service> services){
      Get.toNamed(Routes.SERVICE, arguments: services);
   }
}