// import 'dart:convert';
// import 'package:booking_app/models/booking_model.dart';
// import 'package:http/http.dart' as http;

// class SearchService {
//   String baseUrl = 'https://room-booking-apps.herokuapp.com/api';
  
//   Future<BookingModel> login({
//     String bookingstart,
//     String bookingend,
//   }) async {
//     var url = '$baseUrl/rooms/search-available';
//     var headers = {'Content-Type': 'application/json'};
//     var body = jsonEncode({
//       'email': bookingstart,
//       'password': bookingend,
//     });
    
//     var response = await http.post(
//       url,
//       headers: headers,
//       body: body,
//     );

//     print(response.body);

// //     if (response.statusCode == 200) {
// //       // var data = jsonDecode(response.body)['data'];
// //       // UserModel user = UserModel.fromJson(data['user']);
// //       user.token = data['access_token'];

// //       return user;
// //     } else {
// //       throw Exception('Gagal Login');
// //     }
// //   }
// // }
