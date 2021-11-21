// @dart=2.9

import 'package:barberapp/app/global/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final controller;
  bool showPassword;
  Function changeShowPassword;
  RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller,
    this.showPassword = false,
    this.changeShowPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  TextFieldContainer(
        child: TextFormField(
          validator: (value){
            if(value.isEmpty){
              return 'Campo requerido.';
            }else if(value.length < 5){
              return 'Campo requer mínimo 5\n caracteres.';
            }else{
              return null;
            }
          },
          controller: controller,
          obscureText: !showPassword,
          onChanged: onChanged,
          cursorColor: Get.theme.primaryColor,
          decoration: InputDecoration(
            hintText: "SENHA",
            icon: Icon(
              Icons.lock,
              color: Get.theme.primaryColor,
            ),
            suffixIcon:  IconButton(
                icon: showPassword ?  const Icon(Icons.visibility) : const Icon(Icons.visibility_off_outlined),
                color: Get.theme.primaryColor,
                onPressed: changeShowPassword,
              ),
            border: InputBorder.none,
          ),
        ),
    );
  }
}