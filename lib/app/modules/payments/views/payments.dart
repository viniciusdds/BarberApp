import 'package:barberapp/app/modules/payments/controllers/payments_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentsView extends GetView<PaymentsController>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text("title")),
            body: Container()
        );
    }
}