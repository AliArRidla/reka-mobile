class UserModel {
  int id;
  String name;
  String email;
  String phone;
  String profilPhotoUrl;
  String token;

  // kunstruktor
  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.profilPhotoUrl,
      required this.token});

// terima json
  // UserModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   email = json['email'];
  //   phone = json['phone'];
  //   profilPhotoUrl = json['profile_photo_url'];
  //   token = json['token'];
  // }

  // convert menjadi json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'profilPhotoUrl': profilPhotoUrl,
      'token': token,
    };
  }
}
