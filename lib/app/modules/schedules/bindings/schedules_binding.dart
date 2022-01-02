import 'package:barberapp/app/data/provider/schedule_provider.dart';
import 'package:barberapp/app/data/repository/schedule_repository.dart';
import 'package:barberapp/app/modules/schedules/controllers/schedules_controller.dart';
import 'package:get/get.dart';

class SchedulesBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<SchedulesController>(() => SchedulesController());
    Get.lazyPut<ScheduleRepository>(() => ScheduleRepository());
    Get.lazyPut<ScheduleApiClient>(() => ScheduleApiClient());
  }
}