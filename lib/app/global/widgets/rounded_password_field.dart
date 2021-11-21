// @dart=2.9

import 'package:barberapp/app/global/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    RxBool showPassword = true.obs;

    return Obx(() => TextFieldContainer(
        child: TextField(
          obscureText: showPassword.value,
          onChanged: onChanged,
          cursorColor: Get.theme.primaryColor,
          decoration: InputDecoration(
            hintText: "SENHA",
            icon: Icon(
              Icons.lock,
              color: Get.theme.primaryColor,
            ),
            suffixIcon:  IconButton(
                icon: showPassword.value ? const Icon(Icons.visibility_off_outlined) : const Icon(Icons.visibility),
                color: Get.theme.primaryColor,
                onPressed: (){
                  showPassword.value = !showPassword.value;
                },
              ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}