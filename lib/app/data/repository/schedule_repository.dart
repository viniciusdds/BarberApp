
import 'dart:convert';

import 'package:barberapp/app/data/model/schedule_model.dart';
import 'package:barberapp/app/data/provider/schedule_provider.dart';
import 'package:get/get.dart';

class ScheduleRepository {

  final ScheduleApiClient apiClient = Get.find<ScheduleApiClient>();

  getAll() async {
    List<Schedule> list = <Schedule>[];
    var response = await apiClient.getAll();

    response.forEach((e){
      print(Schedule.fromJson(e).toJson());
        list.add(Schedule.fromJson(e));
    });
    return list;
  }

}