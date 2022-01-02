import 'dart:convert';
import 'package:barberapp/app/data/model/employee_model.dart';
import 'package:barberapp/app/data/model/schedule_model.dart';
import 'package:barberapp/app/data/model/service_model.dart';
import 'package:barberapp/app/global/constants.dart';
import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ScheduleApiClient {

  final http.Client httpClient = http.Client();
  final box = GetStorage('barberapp');

  getAll() async {
    try{
      String token = Auth.fromJson(box.read('auth')).accessToken!;
      var response = await http.get("${baseUrl}/schedules", headers: {
        "Authorization": "Bearer "+token
      });
      if(response.statusCode == 200){
        return json.decode(response.body);
      }else{
        Get.defaultDialog(
            title: "Error",
            content: Text("${json.decode(response.body)['error']}")
        );
        //print('erro -get: ${response.body}');
        return {"Erro": response.body};
      }
    }catch(error){
      Get.defaultDialog(
          title: "Error catch",
          content: Text("${error}")
      );
      //print(error);
      box.erase();
      Get.offAllNamed(Routes.WELCOME);
      return {"Erro": error};
    }finally{
      httpClient.close();
    }
  }

  add(String date, String time, Employee? employee, Service service) async {
    try{
      Auth auth = Auth.fromJson(box.read('auth'));
      String token = auth.accessToken!;
      var userId = auth.user!.id;

      var dt = date.split('/'); // 10/12/2020 => [10, 12, 2020]
      print(dt);
      var newDate = dt[2] + '-' + dt[1] + '-' + dt[0] + ' ' + time + ':00';

      var response = await http.post("${baseUrl}/schedules",
          body: {
            "scheduling_date": "$newDate",
            "user_id": "$userId",
            "employee_id": "${employee?.id ?? ''}",
            "service_id": "${service.id}",
          },
          headers: {"Authorization": "Bearer "+token}
          );
      print("PRINT ========= "+ response.body);
      if(response.statusCode == 200){
        return json.decode(response.body);
      }else{
        Get.defaultDialog(
            title: "Error",
            content: Text("${json.decode(response.body)['error']}")
        );
        //print('erro -get: ${response.body}');
        return {"Erro": response.body};
      }
    }catch(error){
      Get.defaultDialog(
          title: "Error catch",
          content: Text("${error}")
      );
      print(error);
    }finally{
      httpClient.close();
    }
  }

}