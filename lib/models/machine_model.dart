import 'package:reka/models/user_model.dart';

class MachineModel {
  int id;
  String nama_mesin;
  String type_mesin;

  MachineModel({this.id, this.nama_mesin, this.type_mesin});

  MachineModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_mesin = json['nama_mesin'];
    type_mesin = json['type_mesin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_mesin': nama_mesin,
      'type_mesin': type_mesin,
    };
  }
}
