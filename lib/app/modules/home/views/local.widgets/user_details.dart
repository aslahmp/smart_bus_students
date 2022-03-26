import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/home_controller.dart';

class UserDetails extends GetView<HomeController> {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isInit.value
          ? Padding(
              padding: const EdgeInsets.all(AppConstants.padding),
              child: Row(
                children: [
                  Hero(
                    tag: controller.studentModel.value.id,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: CachedNetworkImageProvider(
                        controller.studentModel.value.imageUrl,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Id: ' + controller.studentModel.value.id,
                        style: AppTextStyles.regular
                            .copyWith(fontSize: 15, color: AppColors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Name: ' + controller.studentModel.value.name,
                        style: AppTextStyles.regular
                            .copyWith(fontSize: 16, color: AppColors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Email: ' + controller.studentModel.value.email,
                        style: AppTextStyles.regular
                            .copyWith(fontSize: 15, color: AppColors.black),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : SizedBox(),
    );
  }
}
