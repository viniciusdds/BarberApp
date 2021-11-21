import 'package:barberapp/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("HomeView"),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: (){
                        controller.boxClear();
                      },
                      icon: const Icon(Icons.logout)
                  )
                ],
            ),
            body: Container(
                child: Center(
                    child: Text('HomeView is working'),
                ),
            )
        );
    }
}