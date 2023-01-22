import 'dart:convert';
import 'package:booking_app/models/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FeedbackService {
  String baseUrl = 'https://room-booking-apps.herokuapp.com/api';

  Future<FeedbackModel> feedback({
    String roomid,
    String description,
  }) async {
    var url = '$baseUrl/auth/register';
    var headers = {'Content-Type': 'base/form-data'};
    var body = jsonEncode({
      'room_id': roomid,
      'description': description,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      // var data = jsonDecode(response.body)['data'];
      FeedbackModel feedback =
          FeedbackModel.fromJson(jsonDecode(response.body));
      Exception('Feedback Succes');

      return feedback;
    } else {
      throw Exception('Feedback Failed');
    }
  }
}
