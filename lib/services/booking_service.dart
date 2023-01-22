import 'dart:convert';
import 'package:booking_app/models/booking_model.dart';
import 'package:booking_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class BookingService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';
  Future<BookingModel> booking(
      {String name,
      String email,
      String phone,
      String password,
      String passwordconfirmation,
      String divisionid,
      String gender,
      String address,
      String nip}) async {
    var url = '$baseUrl/booking';
    var headers = {'Content-Type': 'base/form-data'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'password_confirmation': passwordconfirmation,
      'devision_id': divisionid,
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
      // var data = jsonDecode(response.body)['data'];
      BookingModel booking = BookingModel.fromJson(
        jsonDecode(response.body),
      );

      Exception('Berhasil Booking');

      return booking;
    } else {
      throw Exception('Gagal Booking');
    }
  }
}
