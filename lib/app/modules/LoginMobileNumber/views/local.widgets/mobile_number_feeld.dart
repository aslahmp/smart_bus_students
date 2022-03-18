import 'package:flutter/material.dart';

import '../../../../../infastructure/utils/index.dart';

class MobileNumberFeeld extends StatelessWidget {
  const MobileNumberFeeld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 17, right: 17, top: 20, bottom: 18),
      child: TextFormField(
        decoration: AppInputDeceration.defalt.copyWith(
          hintText: 'Mobile Number',
          labelText: 'Mobile Number',
        ),
      ),
    );
  }
}
