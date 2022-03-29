import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/models/pament/online_payment_model_model.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/firbase/payment/get_payment_firbase.dart';
import '../../../data/models/pament/payment/yearly_payment.model.dart';
import '../../profile/controllers/profile_controller.dart';

class PaymentController extends GetxController {
  var paymentdetails = YearlyUserPaymentModel().obs;
  var onlinePaments = <OnlinePaymentModelModel>[].obs;
  var selectedYear = YearManager.currentYear.obs;
  var paymentFirbase = GetPaymentFirbase();
  Rx<num> userFeeAmount = 0.obs;
  @override
  void onInit() {
    getDatas();

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

  getDatas() {
    getOnlinePaymentData();
    getPaymentData();
  }

  void getOnlinePaymentData() async {
    onlinePaments.value = await paymentFirbase.getOnlinePayment();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
