import 'dart:convert';
import 'package:booking_app/models/search_model.dart';
import 'package:http/http.dart' as http;
import 'package:booking_app/models/schedule_model.dart';

class SearchService {
  String baseUrl = 'https://akbar.green-apps.xyz/api';

  Future<List<SearchModel>> searchroom({
    String startdate,
    String enddate,
    String token,
  }) async {
    var url = '$baseUrl/rooms/search-available';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + token
    };
    var body = jsonEncode({
      'start_date': startdate.toString(),
      'end_date': enddate.toString(),
    });
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    print('Request body: $body');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      List<SearchModel> search = [];

      for (var item in data) {
        search.add(SearchModel.fromJson(item));
      }
      print(search);
      return search;
    } else {
      print(response.body);
      throw Exception('Failed Search');
    }
  }
}
