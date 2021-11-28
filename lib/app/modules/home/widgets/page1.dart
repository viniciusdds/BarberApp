import 'package:barberapp/app/data/model/schedule_model.dart';
import 'package:barberapp/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => ListView.builder(
          itemCount: controller.listSchedules.length,
          itemBuilder: (context, index){
            Schedule schedule = controller.listSchedules[index];
            return ListTile(
              title: Text("${schedule.service!.name}"),
              subtitle: Text("${schedule.schedulingDate}"),
            );
          },
        ),
      ),
    );
  }
}
