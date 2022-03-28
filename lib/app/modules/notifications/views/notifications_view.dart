import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Obx(() {
        return Column(
            children: controller.notifications
                .map((notification) => ListTile(
                      title: Text(notification.title),
                      subtitle: Text(notification.description),
                    ))
                .toList());
      })),
    );
  }
}
