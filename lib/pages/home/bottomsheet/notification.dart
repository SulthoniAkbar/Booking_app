import 'package:booking_app/themes.dart';
import 'package:booking_app/widget/notifikasi_card.dart';
import 'package:booking_app/widget/booking_card.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text('Notifikasi'),
        elevation: 0,
      );
    }

    Widget emptyNotif() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: whiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kamu tidak pesan ruang?',
                style: primaryTextStyle3.copyWith(
                    fontSize: 16, fontWeight: semibold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Pesan ruang rapat terlebih dahulu',
                style: subtitleTextStyle,
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 24,
                      ),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Booking Ruang',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
              NotifCard(),
              NotifCard(),
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
