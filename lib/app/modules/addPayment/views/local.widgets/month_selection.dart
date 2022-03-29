import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../infastructure/managers/index.dart';
import '../../../../../../infastructure/utils/index.dart';
import '../../../../data/models/pament/month/month.dart';
import '../../controllers/add_payment_controller.dart';

class MonthSelection extends GetView<AddPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            'MONTH:',
            style: AppTextStyles.bold
                .copyWith(fontSize: 14, color: AppColors.black),
          ),
          SizedBox(
            width: 20,
          ),
          Obx(() {
            return DropdownButton<Month>(
                value: controller.selectedMonth.value,
                underline: SizedBox(),
                items: MonthManager.months
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e.title),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: controller.changeMonth);
          }),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.padding,
      ),
    );
  }
}
