import 'package:get/get.dart';
import 'package:smart_bus_students/app/data/firbase/bus/firbase_get_bus.dart';
import 'package:smart_bus_students/app/data/models/vehicle/bus_model.dart';

class VehicleController extends GetxController {
  var buses = <BusModel>[].obs;
  var _repo = FirbaseGetBus();
  @override
  void onInit() {
    getBuses();
    super.onInit();
  }

  void getBuses() async {
    var buse = await _repo.getBuss();

    buses.value = buse;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

var dummeyBus = BusModel(
    id: '123', number: "kl 58 b3672", driverId: 'ddddf', isTrackEnabled: false);
