import 'package:get/get.dart';

import '../modules/LoginMobileNumber/bindings/login_mobile_number_binding.dart';
import '../modules/LoginMobileNumber/views/login_mobile_number_view.dart';
import '../modules/LoginOtp/bindings/login_otp_binding.dart';
import '../modules/LoginOtp/views/login_otp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homeLayout/bindings/home_layout_binding.dart';
import '../modules/homeLayout/views/home_layout_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

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
    GetPage(
      name: _Paths.LOGIN_OTP,
      page: () => LoginOtpView(),
      binding: LoginOtpBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME_LAYOUT,
      page: () => HomeLayoutView(),
      binding: HomeLayoutBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => PaymentView(),
      binding: PaymentBinding(),
    ),
  ];
}
