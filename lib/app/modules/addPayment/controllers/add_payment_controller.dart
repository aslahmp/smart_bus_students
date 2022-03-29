import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:smart_bus_students/app/data/models/pament/online_payment_model_model.dart';
import 'package:smart_bus_students/app/modules/addPayment/controllers/razorpay_controller.dart';
import 'package:smart_bus_students/app/modules/profile/controllers/profile_controller.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../../infastructure/utils/index.dart';
import '../../../data/firbase/payment/add_payment_firbase.dart';
import '../../../data/models/pament/month/month.dart';
import '../../../data/models/pament/payment/mothly_payment.model.dart';
import '../../payment/controllers/payment_controller.dart';

class AddPaymentController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var amountController = TextEditingController();
  var paymentRepository = AddPaymentFirbase();

  var selectedMonth = MonthManager.months[0].obs;
  var selectedYear = YearManager.currentYear.obs;
  final isLoading = false.obs;
  @override
  void onInit() {
    getLocationDetails();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void getLocationDetails() async {
    var userPaymentController = Get.find<PaymentController>();
    amountController.text =
        userPaymentController.userFeeAmount.value.toString();
  }

  void changeMonth(Month? month) {
    if (month != null) {
      selectedMonth.value = month;
    }
  }

  void changeYear(int? year) {
    if (year != null) {
      selectedYear.value = year;
    }
  }

  void addPayment() async {
    var razorpayContrroller = RazorpayController();
    var studentController = Get.find<ProfileController>();
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      var monthlyPaymentModel = MothlyUserPaymentModel(
        amunt: double.parse(amountController.text),
        date: DateTime.now().toString(),
        month: selectedMonth.value.title,
        isOnlinePay: true,
        isPaid: true,
      );
      var alreadiPaid = await paymentRepository.checkMonthPaymentAlreadyPaide(
        userId: UserManager.userId,
        paymentModel: monthlyPaymentModel,
        year: selectedYear.value,
        monthId: selectedMonth.value.id,
      );
      if (alreadiPaid) {
        Get.showSnackbar(GetSnackBar(
          messageText: Text(
            'Already Paid',
            style: AppTextStyles.regular.copyWith(color: AppColors.white),
          ),
          duration: Duration(seconds: 2),
        ));
        isLoading(false);
      } else {
        razorpayContrroller.pay(
            double.parse(amountController.text),
            studentController.studentModel.value.name,
            '${selectedMonth.value.title}${selectedYear.value}',
            studentController.studentModel.value.phoneNumber.toString(),
            studentController.studentModel.value.email,
            (PaymentSuccessResponse response) async {
          await paymentRepository.addUserMonthPayment(
            userId: UserManager.userId,
            paymentModel: monthlyPaymentModel,
            year: selectedYear.value,
            monthId: selectedMonth.value.id,
          );
          var onlonePaymentModel = OnlinePaymentModelModel(
              userId: UserManager.userId,
              amunt: double.parse(amountController.text),
              date: DateTime.now().toString(),
              month: selectedMonth.value.title,
              orderId: response.orderId ?? '',
              paymentId: response.paymentId ?? '',
              signature: response.signature ?? '');
          await paymentRepository.addOnlinePaymentPayment(
              paymentModel: onlonePaymentModel);
          secssessTost();
        }, (PaymentFailureResponse response) {
          isLoading(false);
          Get.showSnackbar(GetSnackBar(
            messageText: Text(
              'Payment Faild',
              style: AppTextStyles.regular.copyWith(color: AppColors.white),
            ),
            duration: Duration(seconds: 2),
          ));
        }, (ExternalWalletResponse response) {
          isLoading(false);
          Get.showSnackbar(GetSnackBar(
            messageText: Text(
              'Payment Faild',
              style: AppTextStyles.regular.copyWith(color: AppColors.white),
            ),
            duration: Duration(seconds: 2),
          ));
        });
      }
    }
  }

  void secssessTost() async {
    Get.showSnackbar(GetSnackBar(
      messageText: Text(
        'Payment Success',
        style: AppTextStyles.regular.copyWith(color: AppColors.white),
      ),
      duration: Duration(seconds: 2),
    ));

    isLoading(false);
  }

  @override
  void onClose() {}
}
