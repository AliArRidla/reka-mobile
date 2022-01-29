import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:reka/models/machine_model.dart';
import 'package:reka/models/parameter_model.dart';

class ParameterService {
  String baseUrl = 'http://141.144.195.119/api';

  Future<List<ParameterModel>> getParameters() async {
    var url = '$baseUrl/parameters';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      List<ParameterModel> parameters = [];

      for (var item in data) {
        parameters.add(ParameterModel.fromJson(item));
      }

      return parameters;
    }else {
      throw Exception("Gagal get data machines!");
    }
  }
}
