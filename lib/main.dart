import 'package:booking_app/pages/booking_page.dart';
import 'package:booking_app/pages/booking_room.page.dart';
import 'package:booking_app/pages/home/bottomsheet/notification.dart';
import 'package:booking_app/pages/home/main_page.dart';
import 'package:booking_app/pages/edit_profile_page.dart';
import 'package:booking_app/pages/reporting_page.dart';
import 'package:booking_app/pages/sign_in_pages.dart';
import 'package:booking_app/pages/sign_up_pages.dart';
import 'package:booking_app/pages/listbooking_page.dart';
import 'package:booking_app/pages/splashscreen_page.dart';
import 'package:booking_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/sign-in': (context) => SignInPages(),
          '/sign-up': (context) => SignUpPages(),
          '/home': (context) => MainPage(),
          '/notification': (context) => NotificationPage(),
          '/editprofile': (context) => EditProfilePage(),
          '/report': (context) => ReportingPage(),
          '/booking': (context) => BookingPage(),
          '/listruang': (context) => ListNotifPage(),
          '/listbooking': (context) => ListNotifPage(),
          '/bookingroom': (context) => BookingRoomPage(),
        },
      ),
    );
  }
}
