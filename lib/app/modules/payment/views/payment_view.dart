import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_bus_students/app/modules/payment/views/fee/fee.dart';
import 'package:smart_bus_students/app/modules/payment/views/online/online.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.blue1,
            title: Text('Payment'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Fee ',
                    style: AppTextStyles.bold.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'Online Payment',
                  style: AppTextStyles.bold.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Fee(),
              Online(),
            ],
          )),
    );
  }
}
