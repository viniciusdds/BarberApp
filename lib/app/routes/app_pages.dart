import 'package:barberapp/app/modules/company/bindings/company_binding.dart';
import 'package:barberapp/app/modules/company/views/company_view.dart';
import 'package:barberapp/app/modules/payments/bindings/payments_binding.dart';
import 'package:barberapp/app/modules/payments/views/payments.dart';
import 'package:barberapp/app/modules/ratings/bindings/ratings_binding.dart';
import 'package:barberapp/app/modules/ratings/views/ratings_view.dart';
import 'package:barberapp/app/modules/schedules/bindings/schedules_binding.dart';
import 'package:barberapp/app/modules/schedules/views/schedules_view.dart';
import 'package:barberapp/app/modules/service/bindings/service_binding.dart';
import 'package:barberapp/app/modules/service/views/service_view.dart';
import 'package:barberapp/app/modules/settings/bindings/settings_binding.dart';
import 'package:barberapp/app/modules/settings/views/settings_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/initial/bindings/initial_binding.dart';
import '../modules/initial/views/initial_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
        name: Routes.INITIAL,
        page: () => InitialView(),
        binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.SINGUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PAYMENTS,
      page: () => PaymentsView(),
      binding: PaymentsBinding(),
    ),
    GetPage(
      name: Routes.SCHEDULES,
      page: () => SchedulesView(),
      binding: SchedulesBinding(),
    ),
    GetPage(
      name: Routes.RATINGS,
      page: () => RatingsView(),
      binding: RatingsBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.COMPANY,
      page: () => CompanyView(),
      binding: CompanyBinding(),
    ),
    GetPage(
      name: Routes.SERVICE,
      page: () => ServiceView(),
      binding: ServiceBinding(),
    ),
  ];
}