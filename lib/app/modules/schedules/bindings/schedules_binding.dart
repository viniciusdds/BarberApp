import 'package:barberapp/app/modules/schedules/controllers/schedules_controller.dart';
import 'package:get/get.dart';

class SchedulesBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<SchedulesController>(() => SchedulesController());
  }
}