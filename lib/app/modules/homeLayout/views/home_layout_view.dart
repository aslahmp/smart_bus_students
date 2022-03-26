import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_bus_students/app/modules/LoginOtp/views/login_otp_view.dart';
import 'package:smart_bus_students/app/modules/home/views/home_view.dart';
import 'package:smart_bus_students/app/modules/notifications/views/notifications_view.dart';
import 'package:smart_bus_students/app/modules/payment/views/payment_view.dart';
import 'package:smart_bus_students/app/modules/profile/views/profile_view.dart';
import 'package:smart_bus_students/app/modules/splash/views/splash_view.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

import '../controllers/home_layout_controller.dart';

class HomeLayoutView extends GetView<HomeLayoutController> {
  final TextStyle unselectedLabelStyle = AppTextStyles.bold.copyWith(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = AppTextStyles.bold
      .copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: AppColors.blue3,
            unselectedItemColor: AppColors.white.withOpacity(0.5),
            selectedItemColor: AppColors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: AppColors.blue3,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.notifications,
                    size: 20.0,
                  ),
                ),
                label: 'Notificatons',
                backgroundColor: AppColors.blue3,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.payment,
                    size: 20.0,
                  ),
                ),
                label: 'Payments',
                backgroundColor: AppColors.blue3,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: AppColors.blue3,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: buildBottomNavigationMenu(context, controller),
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeView(),
              NotificationsView(),
              PaymentView(),
              ProfileView(),
            ],
          )),
    ));
  }
}
