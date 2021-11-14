import 'package:get/get.dart';

class InitialController extends GetxController {

    RxInt num = 0.obs;

    void btClick(){
      num.value++;
    }

}