import 'package:korzinka_uz/model/name_model.dart';
import 'package:korzinka_uz/model/picture_model.dart';

class UserModel {
  String gender;
  NameModel name;
  String email;
  String phone;
  PictureModel picture;
  String nat;

  UserModel(
      this.gender, this.name, this.email, this.phone, this.picture, this.nat);

  factory UserModel.fromMap(Map<String, dynamic> e) {
   return UserModel(
      e['gender'],
      NameModel.fromMap(e['name']),
      e['email'],
      e['phone'],
      PictureModel.fromMap(e['picture']),
      e['nat'],
    );
  }
}
