import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:result_type/result_type.dart';
import 'package:smart_bus_students/app/data/models/pament/online_payment_model_model.dart';

import '../../models/pament/payment/mothly_payment.model.dart';

class AddPaymentFirbase {
  var firbaseDb = FirebaseDatabase.instance.ref().child('monthlyPayment');
  var firbaseON = FirebaseDatabase.instance.ref().child('onlinePayment');
  Future<Result> addUserMonthPayment(
      {required String userId,
      required MothlyUserPaymentModel paymentModel,
      required int year,
      required String monthId}) async {
    try {
      await firbaseDb
          .child(userId)
          .child(year.toString())
          .update({monthId: paymentModel.toJson()});
      return Success('');
    } catch (e) {
      return Failure(e);
    }
  }

  Future<Result> addOnlinePaymentPayment({
    required OnlinePaymentModelModel paymentModel,
  }) async {
    try {
      await firbaseON.update({paymentModel.paymentId: paymentModel.toJson()});
      return Success('');
    } catch (e) {
      return Failure(e);
    }
  }

  Future<bool> checkMonthPaymentAlreadyPaide(
      {required String userId,
      required MothlyUserPaymentModel paymentModel,
      required int year,
      required String monthId}) async {
    var a = await firbaseDb
        .child(userId)
        .child(year.toString())
        .child(monthId)
        .get();
    if (a.exists) {
      return true;
    } else {
      return false;
    }
  }

  Future<Result> checkMonthPayment() async {
    return Success('value');
  }
}
