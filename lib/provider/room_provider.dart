import 'package:booking_app/services/profille_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_app/models/room_model.dart';

class AuthProvider with ChangeNotifier {
  RoomModel _room;

  RoomModel get room => _room;

  set room(RoomModel room) {
    _room = room;
    notifyListeners();
  }

//   Future<bool> profile({
//     String name,
//     String phone,
//     String divisionid,
//     String gender,
//     String address,
//     String nip,
//   }) async {
//     try {
//       UserModel user = await ProfileService().profile(
//         name: name,
//         phone: phone,
//         divisionid: divisionid,
//         gender: gender,
//         address: address,
//         nip: nip,
//       );
//       _user = user;
//       return true;
//     } catch (e) {
//       print(e);
//       return false;
//     }
//   }
// }
}
