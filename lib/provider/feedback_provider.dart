import 'package:booking_app/services/feedback_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_app/models/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedbackProvider with ChangeNotifier {
  FeedbackModel _feedback;

  FeedbackModel get followup => _feedback;

  set followup(FeedbackModel followup) {
    _feedback = followup;
    notifyListeners();
  }

  Future<bool> feedback({
    String roomid,
    String description,
  }) async {
    try {
      FeedbackModel feedback = await FeedbackService().feedback(
        roomid: roomid,
        description: description,
      );

      _feedback = feedback;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
