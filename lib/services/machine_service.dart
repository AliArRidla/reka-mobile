import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:reka/models/machine_model.dart';

class MachineService {
  String baseUrl = 'http://158.101.200.168/api';

  Future<List<MachineModel>> getMachines() async {
    var url = '$baseUrl/mesins';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<MachineModel> machines = [];

      for (var item in data) {
        machines.add(MachineModel.fromJson(item));
      }

      return machines;
    }else {
      throw Exception("Gagal get data machines!");
    }
  }
}
