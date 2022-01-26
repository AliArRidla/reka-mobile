import 'package:flutter/material.dart';
import 'package:reka/models/parameter_model.dart';
import 'package:reka/services/parameter_service.dart';

class ParameterProvider with ChangeNotifier {
  List<ParameterModel> _parameters = [];
  List<ParameterModel> get parameters => _parameters;

  set machines(List<ParameterModel> parameters) {
    _parameters = parameters;
    notifyListeners();
  }

  Future<void> getParameters() async {
    try {
      List<ParameterModel> parameters = await ParameterService().getParameters();
      _parameters = parameters;
    } catch (e) {
      print(e);
    }
  }
}
