// import 'package:booking_app/services/auth_service.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:booking_app/models/feedback_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class FeedbackProvider with ChangeNotifier {
//   FeedbackModel _feedback;

//   FeedbackModel get feedback => _feedback;

//   set feedback(FeedbackModel user) {
//     _feedback = feedback;
//     notifyListeners();
//   }

//   Future<bool> Feedback({
//     String name,
//     String phone,
//     String email,
//     String password,
//     String passwordconfirmation,
//     String divisionid,
//     String gender,
//     String address,
//     String nip,
//   }) async {
//     try {
//   //     UserModel user = await AuthService().register(
//   //       name: name,
//   //       phone: phone,
//   //       email: email,
//   //       password: password,
//   //       passwordconfirmation: passwordconfirmation,
//   //       divisionid: divisionid,
//   //       gender: gender,
//   //       address: address,
//   //       nip: nip,
//   //     );
//   //     _user = user;
//   //     return true;
//   //   } catch (e) {
//   //     print(e);
//   //     return false;
//   //   }
//   // }

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
