// import 'package:booking_app/models/booking_model.dart';
// import 'package:flutter/cupertino.dart';

// class SearchProvider with ChangeNotifier {
//   BookingModel _room;
//   BookingModel get room => _room;

//   set user(BookingModel room) {
//     _room = room;
//     notifyListeners();
//   }

//   Future<bool> login({
//     String email,
//     String password,
//   }) async {
//     try {
//       BookingModel user = await AuthService().login(
//         email: email,
//         password: password,
//       );

//       _user = user;
//       return true;
//     } catch (e) {
//       print(e);
//       return false;
//     }
//   }
// }
