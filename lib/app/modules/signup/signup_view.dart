import 'package:barberapp/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:barberapp/app/global/widgets/rounded_button.dart';
import 'package:barberapp/app/global/widgets/rounded_input_field.dart';
import 'package:barberapp/app/global/widgets/rounded_password_field.dart';
import 'package:barberapp/app/modules/signup/signup_controller.dart';
import 'package:barberapp/app/modules/signup/widgets/background.dart';
import 'package:barberapp/app/modules/signup/widgets/or_divider.dart';
import 'package:barberapp/app/modules/signup/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Background(
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                  "REGISTRAR",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: Get.height * 0.03),
                            SvgPicture.asset(
                                "assets/signup.svg",
                                height: Get.height * 0.35,
                            ),
                            RoundedInputField(
                                hintText: "Usuário",
                                onChanged: (value) {},
                            ),
                            RoundedPasswordField(
                                onChanged: (value) {},
                            ),
                            RoundedButton(
                                text: "REGISTRAR",
                                press: () {},
                            ),
                            SizedBox(height: Get.height * 0.03),
                            AlreadyHaveAnAccountCheck(
                                login: false,
                                press: () {
                                    Get.offAndToNamed('/login');
                                },
                            ),
                            OrDivider(),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                    SocalIcon(
                                        iconSrc: "assets/facebook.svg",
                                        press: () {},
                                    ),
                                    SocalIcon(
                                        iconSrc: "assets/twitter.svg",
                                        press: () {},
                                    ),
                                    SocalIcon(
                                        iconSrc: "assets/google-plus.svg",
                                        press: () {},
                                    ),
                                ],
                            )
                        ],
                    ),
                ),
            )
        );
    }
}