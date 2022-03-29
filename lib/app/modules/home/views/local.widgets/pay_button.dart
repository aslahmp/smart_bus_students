import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

import '../../controllers/home_controller.dart';

class PayButton extends GetView<HomeController> {
  const PayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.addPayment,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 10),
        child: Column(
          children: [
            CircleAvatar(
              radius: 75,
              backgroundColor: AppColors.blue3.withOpacity(.8),
              child: CircleAvatar(
                  radius: 65,
                  backgroundColor: AppColors.blue3,
                  child: CircleAvatar(
                      radius: 63,
                      backgroundColor: AppColors.white,
                      child: Icon(
                        Icons.blur_on_outlined,
                        size: 95,
                      ))),
            ),
            verticalSpace(10),
            Text(
              'Tap for Pay',
              style: AppTextStyles.bold.copyWith(
                color: AppColors.blue2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
