import 'package:firebase_database/firebase_database.dart';

import '../../models/vehicle/bus_model.dart';

class FirbaseGetBus {
  var firbaseDb = FirebaseDatabase.instance.ref().child('bus');
  Future<List<BusModel>> getBuss() async {
    var result = await firbaseDb.once();
    var buss = <BusModel>[];
    if (result.snapshot.exists) {
      var resultUsers = result.snapshot.value as List;

      resultUsers.forEach((value) {
        if (value != null) {
          var bus = BusModel.fromJson(value);
          buss.add(bus);
        }
      });
      return buss;
    }
    return [];
  }
}
