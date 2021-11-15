import 'package:barberapp/app/modules/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("Signup View")),
            body: Container()
        );
    }
}