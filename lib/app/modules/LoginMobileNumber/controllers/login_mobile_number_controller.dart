import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/firbase/user/friebase_user.dart';
import 'package:smart_bus_students/app/routes/app_pages.dart';

import '../../../../infastructure/utils/index.dart';

class LoginMobileNumberController extends GetxController {
  var mobileNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var userFirebase = FriebaseUser();
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void submit() async {
    isLoading(true);
    if (formKey.currentState!.validate()) {
      var mobileNumberExist =
          await userFirebase.checkUserExist(mobileNumberController.text);
      if (mobileNumberExist) {
        Get.toNamed(Routes.LOGIN_OTP);
      } else {
        Get.showSnackbar(GetSnackBar(
          messageText: Text(
            'User no found',
            style: AppTextStyles.regular.copyWith(color: AppColors.white),
          ),
          duration: Duration(seconds: 2),
        ));
      }
    }
    isLoading(false);
  }
}
