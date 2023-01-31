import 'dart:convert';
import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/models/schedule_model.dart';
import 'package:http/http.dart' as http;

class ScheduleDetailsService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<ScheduleModel> schedule(int id, String token) async {
    var url = '$baseUrl/rooms/schedules/' + id.toString();
    var headers = {'Content-Type': 'base/form-data'};

    var response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      jsonDecode(response.body)['data']['data'];
      ScheduleModel schedule =
          ScheduleModel.fromJson(jsonDecode(response.body)['data']['data']);

      print(schedule.toString());
      return schedule;
    } else {
      throw Exception('Gagal get notif');
    }
  }
}
