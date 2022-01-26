class ParameterModel {
  int id;
  String nama_parameter;
  int id_mesin;
  DateTime createdAt;
  DateTime updatedAt;

  ParameterModel({
    this.id,
    this.nama_parameter,
    this.id_mesin,
    this.createdAt,
    this.updatedAt,
  });

  ParameterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_parameter = json['nama_parameter'];
    id_mesin = json['id_mesin'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_parameter': nama_parameter,
      'id_mesin': id_mesin,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}

class UninitializedProductModel extends ParameterModel {}
