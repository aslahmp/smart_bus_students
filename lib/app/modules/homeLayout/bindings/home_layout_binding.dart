import 'package:get/get.dart';
import 'package:smart_bus_students/app/modules/home/bindings/home_binding.dart';
import 'package:smart_bus_students/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:smart_bus_students/app/modules/payment/bindings/payment_binding.dart';
import 'package:smart_bus_students/app/modules/profile/bindings/profile_binding.dart';

import '../controllers/home_layout_controller.dart';

class HomeLayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeLayoutController>(
      () => HomeLayoutController(),
    );
    var home = HomeBinding();
    home.dependencies();
    var notification = NotificationsBinding();
    notification.dependencies();
    var pament = PaymentBinding();
    pament.dependencies();
    var profile = ProfileBinding();
    profile.dependencies();
  }
}
