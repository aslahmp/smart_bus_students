import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/firbase/payment/get_payment_firbase.dart';
import '../../../data/models/pament/payment/yearly_payment.model.dart';
import '../../profile/controllers/profile_controller.dart';

class PaymentController extends GetxController {
  var paymentdetails = YearlyUserPaymentModel().obs;
  var selectedYear = YearManager.currentYear.obs;
  var paymentFirbase = GetPaymentFirbase();
  Rx<num> userFeeAmount = 0.obs;
  @override
  void onInit() {
    getPaymentData();

    super.onInit();
  }

  void getPaymentData() async {
    var result = await paymentFirbase.getUserYearPayment(
        userId: UserManager.userId, year: selectedYear.value);
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
