import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/model/user_model.dart';
import 'package:barberapp/app/data/provider/auth_provider.dart';
import 'package:flutter/material.dart';

class AuthRepository {

  final AuthApiClient apiClient = AuthApiClient();

  Future<Auth> login(String username, String password) async {
    Map<String, dynamic> json = await apiClient.login(username, password);
    if(json.isNotEmpty){
      return Auth.fromJson(json);
    }else{
      return Auth();
    }

  }

  Future<User> register(String username, String password) async {
    Map<String, dynamic> json = await apiClient.register(username, password);
    return User.fromJson(json['user']);
  }

}