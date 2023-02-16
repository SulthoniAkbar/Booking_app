import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:booking_app/models/schedule_model.dart';

class SearchService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<List<ScheduleModel>> searchroom(
      {DateTime startdate, DateTime enddate, String token}) async {
    var url = '$baseUrl/rooms/search-available';
    var headers = {
      'Content-Type': 'base/form-data',
      'Authorization': 'Bearer ' + token
    };
    var body = jsonEncode({
      'start_date': startdate,
      'end_date': enddate,
    });
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      List<ScheduleModel> schedules = [];

      for (var item in data) {
        schedules.add(ScheduleModel.fromJson(item));
      }
      Exception('Berhasil Login');
      print(schedules);
      return schedules;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
