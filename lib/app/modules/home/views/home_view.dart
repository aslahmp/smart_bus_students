// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (controller.isInit.value)
                SizedBox(
                  height: 200,
                  child: Image.network(controller.studentModel.value.imageUrl),
                ),
              if (controller.isInit.value)
                Text(controller.studentModel.value.name),
              TextButton(onPressed: controller.logout, child: Text('logout'))
            ],
          ),
        );
      }),
    );
  }
}
