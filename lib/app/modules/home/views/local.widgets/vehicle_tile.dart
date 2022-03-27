import 'package:flutter/material.dart';
import 'package:smart_bus_students/app/data/models/vehicle/bus_model.dart';
import 'package:smart_bus_students/infastructure/utils/colors.constants.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

class VehicleTile extends StatelessWidget {
  const VehicleTile({Key? key, required this.busModel}) : super(key: key);
  final BusModel busModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#${busModel.id}',
                  style: AppTextStyles.bold.copyWith(color: AppColors.white),
                ),
                verticalSpace(10),
                Text(
                  busModel.number,
                  style: AppTextStyles.bold.copyWith(
                    color: AppColors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Track Bus',
              style: AppTextStyles.regular.copyWith(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            style: AppConstants.buttonStyle.copyWith(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(10)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.blue3),
            ),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blue2.withOpacity(.8),
      ),
    );
  }
}
