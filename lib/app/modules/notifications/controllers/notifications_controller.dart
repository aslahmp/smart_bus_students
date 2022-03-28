import 'package:get/get.dart';

import '../../../data/firbase/notification/firebase_get_notifications.dart';
import '../../../data/models/notification/notification_model.dart';

class NotificationsController extends GetxController {
  var notifications = <NotificationModel>[].obs;
  final getNotificationFirebase = FirebaseGetNotifications();
  @override
  void onInit() {
    getNotifications();
    super.onInit();
  }

  void getNotifications() async {
    notifications.value = await getNotificationFirebase.getNotifications();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
