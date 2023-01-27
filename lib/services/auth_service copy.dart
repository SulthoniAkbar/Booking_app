import 'dart:convert';
import 'package:booking_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<UserModel> register(
      {String name,
      String email,
      String phone,
      String password,
      String passwordconfirmation,
      String divisionid,
      String gender,
      String address,
      String nip}) async {
    print(name);
    var url = '$baseUrl/auth/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'password_confirmation': passwordconfirmation,
      'division_id': divisionid,
      'gender': gender,
      'address': address,
      'nip': nip,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];
      Exception('Berhasil Login');

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    String email,
    String password,
  }) async {
    var url = '$baseUrl/auth/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
