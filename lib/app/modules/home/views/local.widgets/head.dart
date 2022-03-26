import 'package:flutter/material.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Text(
        'Smart Bus',
        style: AppTextStyles.extraBold.copyWith(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: AppColors.blue2,
        ),
      ),
    );
  }
}
