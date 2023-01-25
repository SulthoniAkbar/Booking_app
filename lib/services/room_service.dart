import 'dart:convert';
import 'package:booking_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<UserModel> room({
    String name,
    String floor,
    String capacity,
    String startdate,
    String enddate,
  }) async {
    var url = '$baseUrl/rooms/:id';
    var headers = {'Content-Type': 'base/form-data'};
    var body = jsonEncode({
      'name': name,
      'floot': floor,
      'capacity': capacity,
      'startdate': startdate,
      'enddate': enddate
    });

    var response = await http.get(
      url,
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      UserModel user = UserModel.fromJson(jsonDecode(response.body));
      Exception('Update Succes');

      return user;
    } else {
      throw Exception('Gagal Update');
    }
  }
}
