import 'package:booking_app/services/profille_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_app/models/user_model.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> profile(
      {String name,
      String phone,
      String divisionid,
      String gender,
      String address,
      String nip,
      String}) async {
    try {
      UserModel user = await ProfileService().profile(
        name: name,
        phone: phone,
        divisionid: divisionid,
        gender: gender,
        address: address,
        nip: nip,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
