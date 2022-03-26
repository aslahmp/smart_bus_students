import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smart_bus_students/app/modules/home/controllers/vehicle_controller.dart';
import 'package:smart_bus_students/app/modules/home/views/local.widgets/vehicle_tile.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

class Vehicele extends GetView<VehicleController> {
  const Vehicele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 50,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Awailable Vehicles',
            style: AppTextStyles.bold.copyWith(
              fontSize: 16,
              color: AppColors.blue3,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(() {
              return Row(
                children: controller.buses
                    .map((bus) => VehicleTile(busModel: bus))
                    .toList(),
              );
            }),
          )
        ],
      ),
    );
  }
}
