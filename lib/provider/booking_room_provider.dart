// import 'package:booking_app/models/booking_model.dart';
// import 'package:booking_app/models/schedule_model.dart';
// import 'package:booking_app/services/booking_service.dart';
// import 'package:booking_app/services/schedule_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BookingRoomProvider with ChangeNotifier {
//   List<BookingModel> _bookingroom = [];
//   List<BookingModel> get bookingroom => _bookingroom;

//   set schedule(List<ScheduleModel> schedule) {
//     _bookingroom = bookingroom;
//     notifyListeners();
//   }

//   Future<void> schedules(
//     String token,
//   ) async {
//     try {
//       List<BookingModel> bookingroom = await BookingService().booking(token);
//       _bookingroom = bookingroom;
//     } catch (e) {
//       print(e);
//     }
//   }
// }
