import 'package:barberapp/app/data/provider/company_provider.dart';
import 'package:barberapp/app/data/provider/schedule_provider.dart';
import 'package:barberapp/app/data/repository/company_repository.dart';
import 'package:barberapp/app/data/repository/schedule_repository.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<HomeController>(() => HomeController());
    //Schedules
    Get.lazyPut<ScheduleRepository>(() => ScheduleRepository());
    Get.lazyPut<ScheduleApiClient>(() => ScheduleApiClient());
    //Companies
    Get.lazyPut<CompanyRepository>(() => CompanyRepository());
    Get.lazyPut<CompanyApiClient>(() => CompanyApiClient());
  }
}