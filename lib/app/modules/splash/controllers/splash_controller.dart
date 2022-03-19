import 'package:get/get.dart';
import 'package:smart_bus_students/app/routes/app_pages.dart';
import 'package:smart_bus_students/infastructure/managers/index.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    start();
    super.onInit();
  }

  void start() async {
    await UserManager.intUser();
    await Future.delayed(Duration(seconds: 1));
    Get.offNamed(Routes.LOGIN_MOBILE_NUMBER);
  }
}
