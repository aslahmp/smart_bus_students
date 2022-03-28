import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/models/pament/payment/mothly_payment.model.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

import '../../../../../infastructure/managers/index.dart';
import '../../controllers/payment_controller.dart';

class FeeTile extends GetView<PaymentController> {
  const FeeTile({Key? key, required this.paymentModel}) : super(key: key);
  final MothlyUserPaymentModel paymentModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Text(
                        paymentModel.month,
                        style: AppTextStyles.bold.copyWith(
                          color: AppColors.blue3,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    horizontalSpace(20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rs ' +
                                '${paymentModel.isPaid ? paymentModel.amunt.toString() : controller.userFeeAmount.value.toString()}',
                            style: AppTextStyles.bold,
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor:
                          paymentModel.isPaid ? AppColors.green : AppColors.red,
                      child: CircleAvatar(
                          radius: 13,
                          backgroundColor: AppColors.white,
                          child: Icon(
                            paymentModel.isPaid ? Icons.check : Icons.close,
                            size: 15,
                            color: paymentModel.isPaid
                                ? AppColors.green
                                : AppColors.red,
                          )),
                    )
                  ],
                ),
                // verticalSpace(20),
                paymentModel.isPaid
                    ? Text(
                        paymentModel.isOnlinePay
                            ? 'Online Payment'
                            : 'Cash Payment',
                        style:
                            AppTextStyles.bold.copyWith(color: AppColors.blue1),
                      )
                    : Text(
                        'Not Paid',
                        style:
                            AppTextStyles.bold.copyWith(color: AppColors.red),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
