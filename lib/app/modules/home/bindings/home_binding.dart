import 'package:get/get.dart';

import 'package:smart_bus_students/app/modules/home/controllers/vehicle_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleController>(
      () => VehicleController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
