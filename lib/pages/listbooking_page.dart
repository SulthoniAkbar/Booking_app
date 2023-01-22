import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/notifikasi_card.dart';
import 'package:booking_app/widget/booking_card.dart';
import 'package:flutter/material.dart';

class ListNotifPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor1,
          centerTitle: true,
          title: Text('Booking Ruang'),
          elevation: 0,
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: whiteColor,
          child: ListView(
            children: [
              NotifCard(),
              BookingCard(),
              // BookingCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyNotif(),
        content(),
      ],
    );
  }
}
