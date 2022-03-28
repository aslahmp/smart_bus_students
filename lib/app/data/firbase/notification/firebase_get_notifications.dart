import 'package:firebase_database/firebase_database.dart';

import '../../models/notification/notification_model.dart';

class FirebaseGetNotifications {
  var firbaseDb = FirebaseDatabase.instance.ref().child('notifications');
  Future<List<NotificationModel>> getNotifications() async {
    var result = await firbaseDb.get();
    var notifications = <NotificationModel>[];
    if (result.exists) {
      var resultUsers = result.value as Map;

      resultUsers.forEach((key, value) {
        if (value != null) {
          var notification = NotificationModel.fromJson(value);
          notifications.add(notification);
        }
      });
      return notifications;
    }
    return [];
  }
}
