import 'package:barberapp/app/global/widgets/rounded_button.dart';
import 'package:barberapp/app/modules/welcome/welcome_controller.dart';
import 'package:barberapp/app/modules/welcome/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WelcomeView extends GetView<WelcomeController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Background(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "BEM VINDO AO BARBER APP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Get.height * 0.05),
                    SvgPicture.asset(
                      "assets/chat.svg",
                      height: Get.height * 0.45,
                    ),
                    SizedBox(height: Get.height * 0.05),
                    RoundedButton(
                      text: "LOGIN",
                      press: () {
                        Get.toNamed('/login');
                      },
                    ),
                    RoundedButton(
                      text: "REGISTRAR",
                      color: Get.theme.primaryColorLight,
                      textColor: Colors.black,
                      press: () {
                       Get.toNamed('/signup');
                      },
                    ),
                  ],
                ),
              ),
            )
        );
    }
}