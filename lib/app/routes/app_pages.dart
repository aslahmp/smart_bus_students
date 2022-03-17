import 'package:get/get.dart';

import '../modules/LoginMobileNumber/bindings/login_mobile_number_binding.dart';
import '../modules/LoginMobileNumber/views/login_mobile_number_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_MOBILE_NUMBER,
      page: () => LoginMobileNumberView(),
      binding: LoginMobileNumberBinding(),
    ),
  ];
}
