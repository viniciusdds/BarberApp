import 'package:barberapp/app/modules/service/controllers/service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceView extends GetView<ServiceController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("title")),
            body: Container()
        );
    }
}