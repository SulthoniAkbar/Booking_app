import 'package:booking_app/pages/booking/booking_page.dart';
import 'package:booking_app/pages/booking/details/booking_room.page.dart';
import 'package:booking_app/pages/home/bottomsheet/notification.dart';
import 'package:booking_app/pages/home/main_page.dart';
import 'package:booking_app/pages/profile/edit_profile_page.dart';
import 'package:booking_app/pages/feedback/reporting_page.dart';
import 'package:booking_app/pages/schedule/details/schedule_detail_page.dart';
import 'package:booking_app/pages/schedule/schedule_page.dart';
import 'package:booking_app/pages/sign_in_pages.dart';
import 'package:booking_app/pages/sign_up_pages.dart';
import 'package:booking_app/pages/booking/listbooking_page.dart';
import 'package:booking_app/pages/splashscreen_page.dart';
import 'package:booking_app/provider/auth_provider.dart';
import 'package:booking_app/provider/feedback_provider.dart';
import 'package:booking_app/provider/notif_provider.dart';
import 'package:booking_app/provider/schedule_provider.dart';
import 'package:booking_app/provider/scheduledetails_provider.dart';
import 'package:booking_app/provider/search_room_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FeedbackProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NotifProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScheduleProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
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
          '/listruang': (context) => ListBooking(),
          '/bookingroom': (context) => BookingRoomPage(),
          '/schedule': (context) => SchedulePage(),
        },
      ),
    );
  }
}
