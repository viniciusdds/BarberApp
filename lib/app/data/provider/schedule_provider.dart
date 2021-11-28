import 'dart:convert';
import 'package:barberapp/app/data/base_url.dart';
import 'package:barberapp/app/data/model/auth_model.dart';
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
        print(response.body);
        return json.decode(response.body);
      }else{
        Get.defaultDialog(
            title: "Error",
            content: Text("${json.decode(response.body)['error']}")
        );
        print('erro -get: ${response.body}');
        return {"Erro": response.body};
      }
    }catch(error){
      Get.defaultDialog(
          title: "Error catch",
          content: Text("${error}")
      );
      print(error);
      return {"Erro": error};
    }finally{
      httpClient.close();
    }
  }

}