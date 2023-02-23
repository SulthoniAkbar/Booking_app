import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/services/search_room_service.dart';
import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  ScheduleModel _search;

  ScheduleModel get search => _search;

  set search(ScheduleModel _search) {
    _search = _search;
    notifyListeners();
  }

  Future<bool> searchroom(
      {DateTime startDate, DateTime endDate, String token}) async {
    try {
      List<ScheduleModel> searchroom = await SearchService().searchroom(
        token: token,
        startdate: startDate,
        enddate: endDate,
      );
      _search = searchroom.isNotEmpty ? searchroom.first : null;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
