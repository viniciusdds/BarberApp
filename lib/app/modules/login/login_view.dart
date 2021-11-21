import 'package:barberapp/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:barberapp/app/global/widgets/rounded_button.dart';
import 'package:barberapp/app/global/widgets/rounded_input_field.dart';
import 'package:barberapp/app/global/widgets/rounded_password_field.dart';
import 'package:barberapp/app/modules/login/login_controller.dart';
import 'package:barberapp/app/modules/login/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Background(
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            const Text(
                                "ENTRAR",
                                style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: Get.height * 0.03),
                            SvgPicture.asset(
                                "assets/login.svg",
                                height: Get.height * 0.35,
                            ),
                            SizedBox(height: Get.height * 0.03),
                            RoundedInputField(
                                hintText: "Usuário",
                                onChanged: (value) {},
                            ),
                            RoundedPasswordField(
                                onChanged: (value) {},
                            ),
                            RoundedButton(
                                text: "ENTRAR",
                                press: () {},
                            ),
                            SizedBox(height: Get.height * 0.03),
                            AlreadyHaveAnAccountCheck(
                                //login: false,
                                press: () {
                                    Get.offAndToNamed('/signup');
                                },
                            ),
                        ],
                    ),
                ),
            )
        );
    }
}