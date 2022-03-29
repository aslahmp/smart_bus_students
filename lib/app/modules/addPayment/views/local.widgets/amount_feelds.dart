import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../../infastructure/utils/index.dart';
import '../../controllers/add_payment_controller.dart';

class AmountTextFeeld extends GetView<AddPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.padding, vertical: AppConstants.padding / 2),
      child: TextFormField(
        controller: controller.amountController,
        keyboardType: TextInputType.number,
        validator: Validators.noneEmptyValidator,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enabled: false,
        decoration: AppInputDeceration.defalt.copyWith(
            prefixIcon: Padding(
              padding: EdgeInsets.only(top: 15, left: AppConstants.padding / 2),
              child: Text(
                'INR',
                style: AppTextStyles.extraBold.copyWith(fontSize: 13),
              ),
            ),
            hintText: "Amount"),
      ),
    );
  }
}
