import 'package:reka/models/parameter_model.dart';

class MachineModel {
  int id;
  String nama_mesin;
  String type_mesin;
  DateTime createdAt;
  DateTime updatedAt;
  List<ParameterModel> parameters; // add parameters

  MachineModel({
    this.id,
    this.nama_mesin,
    this.type_mesin,
    this.createdAt,
    this.updatedAt,
    this.parameters,
  });

  MachineModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_mesin = json['nama_mesin'];
    type_mesin = json['type_mesin'];
    parameters = json['parameters']
        .map<ParameterModel>((parameter) => ParameterModel.fromJson(parameter))
        .toList();
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_mesin': nama_mesin,
      'type_mesin': type_mesin,
      'parameters': parameters.map((parameter) => parameter.toJson()).toList(),
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class UninitializedProductModel extends MachineModel {}
