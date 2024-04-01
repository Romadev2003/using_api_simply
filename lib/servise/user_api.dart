import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:korzinka_uz/model/user_model.dart';

class UserApi {
  static Future<List<UserModel>> loadingUsers() async {
    List<UserModel> users = [];
    print('getting users ... ');
    final url = Uri.parse('https://randomuser.me/api/?results=50');
    final response = await http.get(url);
    final resalts = jsonDecode(response.body)['results'] as List<dynamic>;
    users = resalts.map((e) {
      return UserModel.fromMap(e);
    }).toList();
    return users;
  }
}
