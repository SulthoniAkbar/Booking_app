import 'package:booking_app/models/schedule_model.dart';
import 'package:booking_app/models/search_model.dart';
import 'package:booking_app/services/search_room_service.dart';
import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  SearchModel _search;

  SearchModel get search => _search;

  set search(SearchModel _search) {
    _search = _search;
    notifyListeners();
  }

  Future<bool> searchroom(
      {String startDate, String endDate, String token}) async {
    try {
      List<SearchModel> searchroom = await SearchService().searchroom(
        token: token,
        startdate: startDate,
        enddate: endDate,
      );
      _search = searchroom.isNotEmpty ? searchroom.first : null;
      return true;
    } catch (e) {
      ;
      print(e);
      return false;
    }
  }
}
