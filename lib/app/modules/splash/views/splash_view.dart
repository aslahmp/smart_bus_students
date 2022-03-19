import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          child: Image.asset(AppImages.appLogoWithText),
        ),
      ),
    );
  }
}
