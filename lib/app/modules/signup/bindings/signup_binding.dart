import 'package:barberapp/app/data/provider/auth_provider.dart';
import 'package:barberapp/app/data/repository/auth_repository.dart';
import '../controllers/signup_controller.dart';
import 'package:get/get.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut<SignupController>(() => SignupController());
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}