import 'package:barberapp/app/modules/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("title")),
            body: Container()
        );
    }
}