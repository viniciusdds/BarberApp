import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/model/schedule_model.dart';
import 'package:barberapp/app/data/repository/schedule_repository.dart';
import 'package:barberapp/app/global/widgets/navigation_item.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  // Essencial
  final box = GetStorage('barberapp');
  final repository = Get.find<ScheduleRepository>();

  // Botton Nav Custom
  RxInt selectedIndex = 0.obs;
  Color backgroundColorNav = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text('Início'), Colors.deepPurpleAccent),
    NavigationItem(Icon(Icons.search), Text('Procurar', style: TextStyle(fontSize: 13)), Colors.pinkAccent),
    NavigationItem(Icon(Icons.person_outline), Text('Perfil'), Colors.teal)
  ];

  // Page 1
  RxList<Schedule> listSchedules = <Schedule>[].obs;
  
  // Page 3
  Auth? auth;

  @override
  void onInit() {
    loadData();
    auth = Auth.fromJson(box.read('auth'));
    super.onInit();
  }

  void loadData() async {
    listSchedules.assignAll(await repository.getAll());
  }

  void choiceIndex(int index){
    selectedIndex.value = index;
  }

  void logout(){
    box.erase();
    Get.offAllNamed(Routes.LOGIN);
  }

}