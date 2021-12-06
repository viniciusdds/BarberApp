import 'package:barberapp/app/modules/ratings/controllers/ratings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingsView extends GetView<RatingsController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("title")),
            body: Container()
        );
    }
}