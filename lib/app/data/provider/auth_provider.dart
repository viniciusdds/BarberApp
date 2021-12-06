import 'dart:convert';

import 'package:barberapp/app/data/base_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthApiClient {
  final http.Client httpClient = http.Client();

  Future<Map<String, dynamic>> login(String username, String password) async {
    try{
      var response = await http.post("${baseUrl}/login", body: {
        "username": username,
        "password": password
      });
      if(response.statusCode == 200){
        return json.decode(response.body);
      }else{
        print('erro -get: ${response.body}');
        return {"Erro": response.body};
      }
    }catch(error){
      //print(error);
      return {"Erro": error};
    }finally{
      httpClient.close();
    }
  }

  Future<Map<String, dynamic>> register(String username, String password) async {
    try{
      var response = await http.post("${baseUrl}/register", body: {
        "username": username,
        "password": password
      });
      if(response.statusCode == 200){
        return json.decode(response.body);
      }else{
        Get.defaultDialog(
            title: "Cadastro",
            content: Text("${json.decode(response.body)['message']}")
        );
        //print('erro -get: ${json.decode(response.body)}');
        return {"Erro": response.body};
      }
    }catch(error){
      Get.defaultDialog(
          title: "Cadastro",
          content: Text("${error}")
      );
      //print(error);
      return {"Erro": error};
    }finally{
      httpClient.close();
    }
  }

}

