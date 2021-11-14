import 'package:barberapp/app/modules/initial/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends GetView<InitialController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text("InitialPage"),
          actions: [
            IconButton(
                onPressed: (){
                  controller.btClick();
                },
                icon: const Icon(Icons.cake)
            )
          ],
      ),
      body: Container(
        child: Center(
          child: Obx(() => Text(
              "Botão clicado ${controller.num} vezes.",
               style: const TextStyle(
                 fontSize: 20
               ),
            )
          ),
        ),
      ),
    );
  }
}