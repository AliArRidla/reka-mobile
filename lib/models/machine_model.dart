import 'package:reka/models/user_model.dart';

class MachineModel {
  int id;
  String nama_mesin;
  String type_mesin;
  DateTime createdAt;
  DateTime updatedAt;

  MachineModel({
    this.id,
    this.nama_mesin,
    this.type_mesin,
    this.createdAt,
    this.updatedAt,
  });

  MachineModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_mesin = json['nama_mesin'];
    type_mesin = json['type_mesin'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_mesin': nama_mesin,
      'type_mesin': type_mesin,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class UninitializedProductModel extends MachineModel {}
