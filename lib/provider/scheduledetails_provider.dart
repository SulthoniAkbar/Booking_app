import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/services/notif_service.dart';
import 'package:booking_app/services/schedule_service.dart';
import 'package:booking_app/services/scheduledetails_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleDetailsProvider with ChangeNotifier {
  List<ScheduleModel> _schedule = [];
  List<ScheduleModel> get schedule => _schedule;

  set schedule(List<ScheduleModel> schedule) {
    _schedule = schedule;
    notifyListeners();
  }

  Future<void> scheduleDetails(
    String token,
  ) async {
    try {
      List<ScheduleModel> schedule =
          await ScheduleDetailsService().schedule(token);
      _schedule = schedule;
    } catch (e) {
      print(e);
    }
  }
}
