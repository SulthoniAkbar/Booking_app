import 'dart:convert';
import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/models/schedule_model.dart';
import 'package:http/http.dart' as http;

class ScHeduleService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<List<ScheduleModel>> schedule(String token) async {
    var url = '$baseUrl/rooms/schedules';
    var headers = {
      'Content-Type': 'base/form-data',
      'Authorization': 'Bearer ' + token
    };

    print(token);

    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data']['data'];
      List<ScheduleModel> schedules = [];

      for (var item in data) {
        schedules.add(ScheduleModel.fromJson(item));
      }

      return schedules;
    } else {
      throw Exception('Failed to get schedules');
    }
    // var response = await http.get(
    //   url,
    //   headers: headers,
    // );

    // if (response.statusCode == 200) {
    //   List data = jsonDecode(response.body)['data']['data'];
    //   List<ScheduleModel> schedule = [];

    //   for (var item in data) {
    //     schedule.add(ScheduleModel.fromJson((item)));
    //   }
    //   print(data);
    //   print(schedule.toString());
    //   return schedule;
    // } else {
    //   print(response.body);
    //   throw Exception('Gagal get notif');
    // }
  }
}
