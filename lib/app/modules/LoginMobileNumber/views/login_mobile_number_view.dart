import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_mobile_number_controller.dart';

class LoginMobileNumberView extends GetView<LoginMobileNumberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginMobileNumberView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginMobileNumberView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
