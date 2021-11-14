import 'package:barberapp/app/modules/initial/initial_binding.dart';
import 'package:barberapp/app/modules/initial/initial_view.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => InitialView(),
        binding: InitialBinding(),
    )
  ];
}