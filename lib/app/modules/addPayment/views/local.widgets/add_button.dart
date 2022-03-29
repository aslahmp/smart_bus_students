import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/add_payment_controller.dart';

class UserAddButton extends GetView<AddPaymentController> {
  const UserAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
        onPressed:
            controller.isLoading.value ? null : () => controller.addPayment(),
        child: controller.isLoading.value
            ? SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              )
            : Text("Pay"),
      ),
    );
  }
}
