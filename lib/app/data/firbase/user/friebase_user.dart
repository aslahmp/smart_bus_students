import 'package:firebase_database/firebase_database.dart';
import 'package:smart_bus_students/infastructure/managers/index.dart';

class FriebaseUser {
  var firbaseDb = FirebaseDatabase.instance.ref();
  Future<bool> checkUserExist(String phoneNumber) async {
    var user =
        await firbaseDb.child('studentPhoneNumbers').child(phoneNumber).get();
    if (user.value != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> setUser(String phoneNumber) async {
    var user =
        await firbaseDb.child('studentPhoneNumbers').child(phoneNumber).get();
    if (user.value != null) {
      print(user.value.toString());
      await UserManager.setUserLoginStatus(true);
      await UserManager.saveUserId(user.value.toString());
    }
  }
}
