import 'package:barberapp/app/modules/schedules/controllers/schedules_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SchedulesView extends GetView<SchedulesController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("title")),
            body: Container()
        );
    }
}