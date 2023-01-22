import 'package:booking_app/pages/home/bottomsheet/home_page.dart';
import 'package:booking_app/pages/home/bottomsheet/notification.dart';
import 'package:booking_app/pages/home/bottomsheet/profile.dart';
import 'package:booking_app/themes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Widget cardButton(){
    //   return FloatingActionButton(onPressed: (){},
    //   child: Image.asset('assets/icon_home.png', width: 20, color: currentIndex == 0? primaryColor: Color(0xff808191)),
    //   );
    // }

    Widget costumButton() {
      return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 21,
              color: currentIndex == 0 ? primaryColor : Color(0xff808191),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_notifikasi.png',
              width: 21,
              color: currentIndex == 1 ? primaryColor : Color(0xff808191),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_user.png',
              width: 21,
              color: currentIndex == 2 ? primaryColor : Color(0xff808191),
            ),
            label: '',
          ),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return NotificationPage();
          break;
        case 2:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
        // floatingActionButton: cardButton(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: costumButton(),
        body: body());
  }
}
