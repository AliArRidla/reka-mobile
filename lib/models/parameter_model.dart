class ParameterModel {
  int id;
  String nama_parameter;

  ParameterModel({
    this.id,
    this.nama_parameter,
  });

  ParameterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama_parameter = json['nama_parameter'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama_parameter': nama_parameter,
    };
  }
}
