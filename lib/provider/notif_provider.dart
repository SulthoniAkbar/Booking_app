import 'package:booking_app/models/booking_model.dart';
import 'package:booking_app/models/notification_model.dart';
import 'package:booking_app/services/notif_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifProvider with ChangeNotifier {
  List<NotificationModel> _notifs = [];
  List<NotificationModel> get notif => _notifs;

  set notif(List<NotificationModel> notif) {
    _notifs = notif;
    notifyListeners();
  }

  Future<void> notifacation(
    String token,
  ) async {
    try {
      List<NotificationModel> notif = await NotifService().notification(token);
      _notifs = notif;
    } catch (e) {
      print(e);
    }
  }
}
