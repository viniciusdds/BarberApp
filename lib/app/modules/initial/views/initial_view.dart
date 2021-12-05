import '../controllers/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialView extends GetView<InitialController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            seconds: 5,
            gradientBackground: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red
              ]
            ),
            navigateAfterSeconds: controller.verifyAuth(), // HomeScreen(),
            loaderColor: Colors.transparent,
          ),
          Container(
            margin: const EdgeInsets.all(100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain
              )
            ),
          )
        ],
      )
    );
  }
}