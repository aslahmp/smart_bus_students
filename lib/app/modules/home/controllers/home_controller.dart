import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/firbase/student/firebase_student.dart';
import 'package:smart_bus_students/app/data/models/student/student.dart';
import 'package:smart_bus_students/infastructure/managers/index.dart';
import 'package:smart_bus_students/infastructure/managers/user_manager.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final _studentFirebase = FirebaseStudent();
  late Rx<StudentModel> studentModel;
  var isInit = false.obs;
  @override
  void onInit() {
    print(UserManager.userId);
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
