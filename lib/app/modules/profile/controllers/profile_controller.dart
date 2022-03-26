import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/firbase/student/firebase_student.dart';
import '../../../data/models/student/student.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  final _studentFirebase = FirebaseStudent();
  late Rx<StudentModel> studentModel;
  var isInit = false.obs;
  @override
  void onInit() {
    studentInit();
    super.onInit();
  }

  studentInit() async {
    var srudent = await _studentFirebase.getStudent(UserManager.userId);
    if (srudent != null) {
      studentModel = srudent.obs;
      isInit(true);
    }
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
