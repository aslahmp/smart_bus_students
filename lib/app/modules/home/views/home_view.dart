// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_bus_students/app/modules/home/views/local.widgets/head.dart';
import 'package:smart_bus_students/app/modules/home/views/local.widgets/index.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            // Head(),
            PayButton(),
          ],
        ),
      ),
    ));
  }
}
