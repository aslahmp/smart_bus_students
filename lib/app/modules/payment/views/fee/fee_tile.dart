import 'package:flutter/material.dart';
import 'package:smart_bus_students/app/data/models/pament/payment/mothly_payment.model.dart';

class FeeTile extends StatelessWidget {
  const FeeTile({Key? key, this.paymentModel}) : super(key: key);
  final MothlyUserPaymentModel? paymentModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MothlyUserPaymentModel != null ? Text('dd') : Text('sd'),
    );
  }
}
