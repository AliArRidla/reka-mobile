import 'package:flutter/material.dart';
import 'package:reka/models/machine_model.dart';
import 'package:reka/services/machine_service.dart';

class MachineProvider with ChangeNotifier {
  List<MachineModel> _machines = [];
  List<MachineModel> get machines => _machines;

  set machines(List<MachineModel> machines) {
    _machines = machines;
    notifyListeners();
  }

  Future<void> getMachines() async {
    try {
      List<MachineModel> machines = await MachineService().getMachines();
      _machines = machines;
    } catch (e) {
      print(e);
    }
  }
}
