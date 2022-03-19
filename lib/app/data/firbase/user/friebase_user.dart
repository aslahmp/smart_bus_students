import 'package:firebase_database/firebase_database.dart';

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
}
