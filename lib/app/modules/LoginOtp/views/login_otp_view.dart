import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_otp_controller.dart';

class LoginOtpView extends GetView<LoginOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginOtpView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginOtpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
