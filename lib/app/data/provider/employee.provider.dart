import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:barberapp/app/global/constants.dart';

class EmployeeApiClient extends GetConnect {
  final box = GetStorage('barberapp');

  getAll() async {
    Auth auth = Auth.fromJson(box.read('auth'));
    var response = await get("${baseUrl}/employee/schedules/${auth.user!.employees![0].id}", headers: {
      "Authorization": "Bearer "+auth.accessToken!
    });


    if(response.hasError){
     // print("ApiEmployee ${response.statusText}");
    //   box.erase();
    //   Get.offAllNamed(Routes.WELCOME);
     }

    if(response.statusCode == 200){
      return response.body;
    }else{
      Get.defaultDialog(
          title: "Error",
          content: Text("${response.body['error']}")
      );
      return {};
    }

  }

}