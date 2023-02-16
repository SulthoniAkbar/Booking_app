import 'dart:convert';
import 'package:booking_app/models/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FeedbackService {
  String baseUrl = 'https://akbar.green-apps.xyz/api';

  Future<FeedbackModel> feedback(
      {String roomid, String description, String media, String token}) async {
    var url = '$baseUrl/feedbacks';
    var headers = {
      'Content-Type': 'base/form-data',
      'Authorization': 'Bearer ' + token,
    };
    var body = jsonEncode({
      'room_id': roomid,
      'description': description,
      'medias': media,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      FeedbackModel feedback = FeedbackModel.fromJson(data);

      return feedback;
    } else {
      throw Exception('Feedback Failed');
    }
  }
}
