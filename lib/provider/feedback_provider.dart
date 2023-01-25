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

  // Future<bool> Feedback({
  //   String name,
  //   String phone,
  //   String email,
  //   String password,
  //   String passwordconfirmation,
  //   String divisionid,
  //   String gender,
  //   String address,
  //   String nip,
  // }) async {
  //   try {
  //     UserModel user = await AuthService().register(
  //       name: name,
  //       phone: phone,
  //       email: email,
  //       password: password,
  //       passwordconfirmation: passwordconfirmation,
  //       divisionid: divisionid,
  //       gender: gender,
  //       address: address,
  //       nip: nip,
  //     );
  //     _user = user;
  //     return true;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

//   Future<bool> login({
//     String email,
//     String password,
//   }) async {
//     try {
//       UserModel user = await AuthService().login(
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
