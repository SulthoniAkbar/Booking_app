import 'dart:convert';
import 'package:booking_app/models/notification_model.dart';
import 'package:http/http.dart' as http;

class NotifService {
  String baseUrl = 'https://akbar.green-apps.xyz/api';

  Future<List<NotificationModel>> notification(String token) async {
    var url = '$baseUrl/booking';
    var headers = {
      'Content-Type': 'base/form-data',
      'Authorization': 'Bearer ' + token
    };

    var response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<NotificationModel> notif = [];

      for (var item in data) {
        notif.add(NotificationModel.fromJson((item)));
      }
      print(notif..toString());
      print(data);
      return notif;
    } else {
      print(response.body);
      throw Exception('Gagal get notif');
    }
  }
}
