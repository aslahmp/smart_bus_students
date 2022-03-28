import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/models/pament/payment/yearly_payment.model.dart';

class PaymentController extends GetxController {
  var paymentdetails = YearlyUserPaymentModel().obs;
  var selectedYear = YearManager.currentYear.obs;
  var paymentFirbase = GetPaymentFirbase();
  @override
  void onInit() {
    super.onInit();
  }

  void getPaymentData() async {
    var result = await paymentFirbase.getUserYearPayment(
        userId: studentModel.id, year: selectedYear.value);
    if (result.isSuccess) {
      paymentdetails.value = YearlyUserPaymentModel.fromjson(result.success);
    } else {
      paymentdetails.value = YearlyUserPaymentModel();
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
