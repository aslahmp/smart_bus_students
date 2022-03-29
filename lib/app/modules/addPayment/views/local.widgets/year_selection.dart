import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../infastructure/managers/index.dart';
import '../../../../../../infastructure/utils/index.dart';
import '../../controllers/add_payment_controller.dart';

class YearSelection extends GetView<AddPaymentController> {
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
            'YEAR:',
            style: AppTextStyles.bold
                .copyWith(fontSize: 14, color: AppColors.black),
          ),
          SizedBox(
            width: 20,
          ),
          Obx(() {
            return DropdownButton<int>(
                value: controller.selectedYear.value,
                underline: SizedBox(),
                items: YearManager.years()
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text('$e'),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: controller.changeYear);
          }),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.padding,
      ),
    );
  }
}
