import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/services/notif_service.dart';
import 'package:booking_app/services/schedule_service.dart';
import 'package:booking_app/services/scheduledetails_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleDetailsProvider with ChangeNotifier {
  ScheduleModel _schedule;

  ScheduleModel get schedule => _schedule;

  set schedule(ScheduleModel schedule) {
    _schedule = schedule;
    notifyListeners();
  }

  Future<void> schedules(int id, String token) async {
    try {
      ScheduleModel schedule =
          await ScheduleDetailsService().schedule(id, token);
      _schedule = schedule;
    } catch (e) {
      print(e);
    }
  }
}
