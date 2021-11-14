import 'package:barberapp/app/routes/app_pages.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:barberapp/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Baber App",
      debugShowCheckedModeBanner: false,
      theme: appThemaData,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
      //initialBinding: ,
    )
  );
}

