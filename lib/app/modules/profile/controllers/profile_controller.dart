import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/firbase/student/firebase_student.dart';
import '../../../data/models/student/student.dart';
import '../../../routes/app_pages.dart';
import '../../payment/controllers/payment_controller.dart';

class ProfileController extends GetxController {
  final _studentFirebase = FirebaseStudent();
  late Rx<StudentModel> studentModel;
  var isInit = false.obs;

  @override
  void onInit() {
    studentInit();
    super.onInit();
  }

  void getStudentFeeAmount() async {
    var paymentControllr = Get.find<PaymentController>();
    paymentControllr.userFeeAmount.value = await paymentControllr.paymentFirbase
        .getUserPaymentAmount(plaseId: studentModel.value.locationId);
  }

  studentInit() async {
    var srudent = await _studentFirebase.getStudent(UserManager.userId);
    if (srudent != null) {
      studentModel = srudent.obs;
      isInit(true);
    }
    getStudentFeeAmount();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void logout() {
    UserManager.logOutUser();
    Get.offNamed(Routes.SPLASH);
  }

  @override
  void onClose() {}
}
