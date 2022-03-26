import 'package:flutter/material.dart';
import 'package:smart_bus_students/app/data/models/vehicle/bus_model.dart';
import 'package:smart_bus_students/infastructure/utils/colors.constants.dart';

class VehicleTile extends StatelessWidget {
  const VehicleTile({Key? key, required this.busModel}) : super(key: key);
  final BusModel busModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.blue2.withOpacity(.6),
      ),
    );
  }
}
