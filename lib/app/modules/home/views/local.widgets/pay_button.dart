import 'package:flutter/material.dart';
import 'package:smart_bus_students/infastructure/utils/colors.constants.dart';
import 'package:smart_bus_students/infastructure/utils/index.dart';

class PayButton extends StatelessWidget {
  const PayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          CircleAvatar(
            radius: 65,
            backgroundColor: AppColors.blue3.withOpacity(.8),
            child: CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.blue3,
                child: CircleAvatar(
                    radius: 58,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.blur_on_outlined,
                      size: 90,
                    ))),
          ),
          verticalSpace(10),
          Text(
            'Tap for Pay',
            style: AppTextStyles.bold.copyWith(
              color: AppColors.blue2,
            ),
          )
        ],
      ),
    );
  }
}
