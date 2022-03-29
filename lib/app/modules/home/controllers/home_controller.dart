import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/firbase/student/firebase_student.dart';
import 'package:smart_bus_students/app/data/models/student/student.dart';
import 'package:smart_bus_students/infastructure/managers/index.dart';
import 'package:smart_bus_students/infastructure/managers/user_manager.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void addPayment() {
    Get.toNamed(Routes.ADD_PAYMENT);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
