import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_payment_controller.dart';
import 'local.widgets/index.dart';

class AddPaymentView extends GetView<AddPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Fee'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              // IdTextFeeld(),
              // NameTextFeeld(),

              YearSelection(),
              MonthSelection(),

              AmountTextFeeld(),
              UserAddButton(),
            ],
          ),
        ),
      ),
    );
  }
}
