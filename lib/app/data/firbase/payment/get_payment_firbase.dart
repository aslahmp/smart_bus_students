import 'package:firebase_database/firebase_database.dart';
import 'package:result_type/result_type.dart';
import 'package:smart_bus_students/app/data/models/pament/online_payment_model_model.dart';
import 'package:smart_bus_students/infastructure/managers/index.dart';

class GetPaymentFirbase {
  var firbaseDb = FirebaseDatabase.instance.ref().child('monthlyPayment');

  var firbaseON = FirebaseDatabase.instance.ref().child('onlinePayment');
  var firbaseDbDf = FirebaseDatabase.instance.ref();
  Future<Result> getUserYearPayment({
    required String userId,
    required int year,
  }) async {
    var result = await firbaseDb.child(userId).child(year.toString()).get();
    if (result.exists) {
      return Success(result.value);
    }
    return Failure('');
  }

  Future<num> getUserPaymentAmount({
    required String plaseId,
  }) async {
    var result = await firbaseDbDf.child('locations').child(plaseId).get();
    if (result.exists) {
      var value = result.value as Map;
      return value['fee'] ?? 0;
    }
    return 0;
  }

  Future<List<OnlinePaymentModelModel>> getOnlinePayment() async {
    var result = await firbaseON.once();
    var payments = <OnlinePaymentModelModel>[];
    if (result.snapshot.exists) {
      var resultUsers = result.snapshot.value as Map;

      resultUsers.forEach((
        k,
        value,
      ) {
        if (value != null) {
          var onlinePayment = OnlinePaymentModelModel.fromjson(value);
          if (onlinePayment.userId == UserManager.userId) {
            payments.add(onlinePayment);
          }
        }
      });
      return payments;
    }
    return [];
  }
}
