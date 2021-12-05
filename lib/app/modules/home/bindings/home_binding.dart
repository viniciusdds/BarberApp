import 'package:barberapp/app/data/provider/schedule_provider.dart';
import 'package:barberapp/app/data/repository/schedule_repository.dart';
import '../controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ScheduleRepository>(() => ScheduleRepository());
    Get.lazyPut<ScheduleApiClient>(() => ScheduleApiClient());
  }
}