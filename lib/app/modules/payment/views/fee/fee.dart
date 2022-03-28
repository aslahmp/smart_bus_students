import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_bus_students/app/modules/payment/views/fee/fee_tile.dart';

import '../../controllers/payment_controller.dart';

class Fee extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: controller.paymentdetails.value
          .getList()
          .map((e) => FeeTile(
                paymentModel: e,
              ))
          .toList(),
    ));
  }
}
